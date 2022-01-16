package com.students.students;

import javafx.beans.property.SimpleStringProperty;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.input.KeyEvent;
import javafx.util.Callback;

import java.net.URL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ResourceBundle;


//@SuppressWarnings("all")
public class etudiantController implements Initializable {
    
    private final DbUtils db = new DbUtils();
    private final HashMap<String, String> lst = new HashMap<String, String>();
    private final List<String> columnNames = new ArrayList<>();
    
    @FXML
    TableView<ObservableList<String>> tv;
    @FXML
    ComboBox<String> niv, cls, etu, nt, aff;
    @FXML
    Label id;
    @FXML
    TextField ar, mt, ph, is, fr, en, gh, mu, in, sp, sc, ci;
    @FXML
    Button ins, edt;
    @FXML
    CheckBox cb, cb1;
    
    private void buildData (String query) throws SQLException {
        if (!tv.getColumns().isEmpty()) tv.getColumns().removeAll(tv.getColumns());
        ResultSet resultSet = db.runQuery(query);
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
    
    @FXML
    private void getClassCount () {
        if (!cls.getItems().isEmpty()) cls.getItems().removeAll(cls.getItems());
        String query = "SELECT DISTINCT `class` FROM `ens_class` WHERE `ens_class`.`niv_scho` = " + niv.getValue();
        ResultSet rs = db.runQuery(query);
        try {
            while (rs.next()) cls.getItems().add(rs.getString("class"));
            buildData("SELECT name,last_name,class FROM StudentsList,stu_class WHERE StudentsList.stu_id = stu_class.stu_id AND niv_scho = " + niv.getValue());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    @FXML
    private void getStudentsCount () {
        if (!etu.getItems().isEmpty()) etu.getItems().removeAll(etu.getItems());
        String query =
         "SELECT StudentsList.`stu_id`,`name`,`last_name` FROM StudentsList,`stu_class` WHERE StudentsList.`stu_id` = `stu_class`.`stu_id` AND `stu_class`.`niv_scho` = " + niv.getValue() + " AND `stu_class`.`class` = " + cls.getValue();
        ResultSet rs = db.runQuery(query);
        try {
            while (rs.next()) etu.getItems().add(rs.getString("stu_id").concat(" " + rs.getString("name").concat(" " + rs.getString("last_name"))));
            buildData("SELECT `stu_class`.`stu_id` AS `ID` ,`name` AS `Nom`, `last_name` AS `Prenom` FROM StudentsList, stu_class WHERE niv_scho = " + niv.getValue() + " AND class = " + cls.getValue() + " AND StudentsList.stu_id = " +
             "stu_class.stu_id");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    @FXML
    private void showStudent () {
        String[] stu = etu.getValue().split(" ");
        id.setText(stu[0]);
        try {
            buildData("SELECT " + aff.getValue() + "_cc," + aff.getValue() + "_dv," + aff.getValue() + "_moy FROM notes_cc,notes_dv,notes_moy WHERE notes_cc.stu_id = " + id.getText() + " AND notes_dv.stu_id = " + id.getText() + " AND " + "notes_moy.stu_id = " + id.getText());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    @FXML
    private void showSpecModul () {
        try {
            buildData("SELECT " + aff.getValue() + "_cc," + aff.getValue() + "_dv," + aff.getValue() + "_moy FROM notes_cc,notes_dv,notes_moy WHERE notes_cc.stu_id = " + id.getText() + " AND notes_dv.stu_id = " + id.getText() + " AND " + "notes_moy.stu_id = " + id.getText());
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    @FXML
    private void showSpecific () {
        String query = "SELECT * FROM " + switchNotesTable() + " WHERE stu_id = " + id.getText();
        try {
            buildData(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    @FXML
    private void clear () {
        clearText(ar, mt, ph, is, fr, en);
        clearText(gh, mu, in, sp, sc, ci);
        clearStyle(ar, mt, ph, is, fr, en);
        clearStyle(gh, mu, in, sp, sc, ci);
        failAll(ar, mt, ph, is, fr, en);
        failAll(gh, mu, in, sp, sc, ci);
        check();
    }
    
    private void clearText (TextField ar, TextField mt, TextField ph, TextField is, TextField fr, TextField en) {
        ar.setText("");
        mt.setText("");
        ph.setText("");
        is.setText("");
        fr.setText("");
        en.setText("");
    }
    
    private void clearStyle (TextField ar, TextField mt, TextField ph, TextField is, TextField fr, TextField en) {
        ar.getStylesheets().removeAll(ar.getStyle());
        mt.getStylesheets().removeAll(mt.getStyle());
        ph.getStylesheets().removeAll(ph.getStyle());
        is.getStylesheets().removeAll(is.getStyle());
        fr.getStylesheets().removeAll(fr.getStyle());
        en.getStylesheets().removeAll(en.getStyle());
    }
    
    private void failAll (TextField ar, TextField mt, TextField ph, TextField is, TextField fr, TextField en) {
        lst.replace(ar.getId(), "fail");
        lst.replace(mt.getId(), "fail");
        lst.replace(ph.getId(), "fail");
        lst.replace(is.getId(), "fail");
        lst.replace(fr.getId(), "fail");
        lst.replace(en.getId(), "fail");
    }
    
    @FXML
    private void acceptDigitOnly (KeyEvent ae) {
        TextField src = (TextField) ae.getSource();
        String str = src.getText();
        lst.putIfAbsent(src.getId(), "fail");
        double d;
        if (!str.isEmpty()) {
            if (str.matches("\\d+(\\.\\d+)?") && str.length() <= 5) {
                d = Double.parseDouble(str);
                if (d >= 00.00 && d <= 20.00) {
                    src.setStyle("-fx-border-color: green");
                    lst.replace(src.getId(), lst.get(src.getId()), "pass");
                } else {
                    src.setStyle("-fx-border-color: red");
                    lst.replace(src.getId(), lst.get(src.getId()), "fail");
                }
            } else {
                src.setStyle("-fx-border-color: red");
                lst.replace(src.getId(), lst.get(src.getId()), "fail");
            }
        } else {
            src.setStyle("-fx-border-color: red");
            lst.replace(src.getId(), lst.get(src.getId()), "fail");
        }
        check();
    }
    
    private void check () {
        if (cb.isSelected() && cb1.isSelected()) {
            ins.setDisable(lst.containsValue("fail") || lst.size() < 10);
            edt.setDisable(lst.containsValue("fail") || lst.size() < 10);
            return;
        }
        if (cb.isSelected() || cb1.isSelected()) {
            ins.setDisable(lst.containsValue("fail") || lst.size() < 11);
            edt.setDisable(lst.containsValue("fail") || lst.size() < 11);
            return;
        }
        ins.setDisable(lst.containsValue("fail") || lst.size() < 12);
        edt.setDisable(lst.containsValue("fail") || lst.size() < 12);
    }
    
    @FXML
    private void exempt () {
        in.setDisable(cb.isSelected());
        mu.setDisable(cb1.isSelected());
    }
    
    @FXML
    private void insert () {
        // TODO
        // insert statement
        String table = "notes_moy";
        switchNotesTable();
        String query =
         "INSERT INTO " + switchNotesTable() + " VALUES (" + id.getText() + "," + getDouble(mt) + "," + getDouble(ar) + "," + getDouble(fr) + "," + getDouble(en) + "," + getDouble(is) + "," + getDouble(ci) + "," + getDouble(gh) + "," + getDouble(sp) + "," + getDouble(ph) + "," + getDouble(sc) + "," + (cb.isSelected() ? null : getDouble(in)) + "," + (cb1.isSelected() ? null : getDouble(mu)) + ")";
        if (db.run(query).equals("Execution Successful")) id.setStyle("-fx-text-fill: green");
        else id.setStyle("-fx-text-fill: red");
    }
    
    private double getDouble (TextField tf) {
        return Double.parseDouble(tf.getText());
    }
    
    private String switchNotesTable () {
        String table = "notes_moy";
        switch (nt.getValue()) {
            case "CC":
                table = "notes_cc";
                break;
            case "Examen":
                table = "notes_exmn";
                break;
            case "Devoir":
                table = "notes_dv";
                break;
        }
        return table;
    }
    
    @FXML
    private void edit () {
        // TODO
        // edit statement
    }
    
    @Override
    public void initialize (URL location, ResourceBundle resources) {
        try {
            buildData("SELECT * FROM StudentsList");
            niv.getItems().addAll("1", "2", "3", "4");
            nt.getItems().addAll("CC", "Devoir", "Examen");
            nt.setValue("CC");
            aff.getItems().addAll("math", "arabic", "french", "english", "islamic", "music", "geo_histo", "sport", "physics", "science", "informatique");
            aff.setValue("math");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
