package com.students.students;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.util.Callback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


@SuppressWarnings("all")
public class DbUtils {
    private final List<String> columnNames = new ArrayList<>();
    private Connection con;
    
    DbUtils () {
        try {
            connect();
            con.setAutoCommit(true);
            run("SET SESSION foreign_key_checks=OFF");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    private String connect () {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/students", "root", "devprod");
            return "Connection successful";
        } catch (Exception e) {
            System.out.println("Connection exception starts here : \n" + e + "\nconnection exception ends here.");
            return "Connection failed";
        }
    }
    
    public ResultSet runQuery (String query) {
        if (connect().equals("Connection successful")) {
            try {
                return con.createStatement().executeQuery(query);
            } catch (SQLException e) {
                System.out.println("runQuery() exception starts here : " + e);
                return null;
            }
        } else return null;
    }
    
    public String run (String query) {
        if (connect().equals("Connection successful")) {
            try {
                con.createStatement().execute(query);
            } catch (SQLException e) {
                System.out.println("run() exception starts here : " + e);
                return "Execution failed";
            }
        }
        return "Execution Successful";
    }
    
    void populateData (TableView tv, String query) throws SQLException {
        if (!tv.getColumns().isEmpty()) tv.getColumns().removeAll(tv.getColumns());
        ResultSet resultSet = runQuery(query);
        ObservableList<ObservableList<String>> data = FXCollections.observableArrayList();
        
        for (int i = 0; i < resultSet.getMetaData().getColumnCount(); i++) {
            
            final int j = i;
            TableColumn col = new TableColumn(resultSet.getMetaData().getColumnName(i + 1));
            col.setCellValueFactory((Callback<TableColumn.CellDataFeatures<ObservableList, String>, ObservableValue<String>>) param -> {
                if (param.getValue().get(j) != null) {
                    return new SimpleStringProperty(param.getValue().get(j).toString());
                } else {
                    return null;
                }
            });
            
            tv.getColumns().addAll(col);
            this.columnNames.add(col.getText());
        }
        
        while (resultSet.next()) {
            //Iterate Row
            ObservableList<String> row = FXCollections.observableArrayList();
            for (int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++) {
                //Iterate Column
                row.add(resultSet.getString(i));
            }
            data.add(row);
            
        }
        //FINALLY ADDED TO TableView
        tv.setItems(data);
    }
    
    private void close () {
        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
