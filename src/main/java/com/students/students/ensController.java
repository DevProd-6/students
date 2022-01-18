package com.students.students;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.*;
import javafx.scene.input.KeyEvent;

import java.net.URL;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.ResourceBundle;


public class ensController implements Initializable {
    @FXML
    ComboBox<String> lv, sr;
    @FXML
    DatePicker dt;
    @FXML
    ToggleButton tb;
    @FXML
    Label lb;
    @FXML
    ChoiceBox<String> cb;
    @FXML
    private TextField nm, ln, em, pn, cls, ser;
    private DbUtils db;
    private HashMap<String, String> lst = new HashMap<>();
    
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
    }
    
    @FXML
    private void insert () {
        String table = switchTable();
        switch (table) {
            case "EnsiegnantsList":
                setSucceed(db.run("INSERT INTO " + switchTable() + " (name,last_name,date_nais,email,num_tel) VALUES ('" + nm.getText() + "','" + ln.getText() + "','" + getDate() + "','" + em.getText() + "','" + pn.getText() + "')"));
                break;
            case "StudentsList":
                setSucceed(db.run("INSERT INTO " + switchTable() + " (name,last_name,date_nais,gender) VALUES ('" + nm.getText() + "','" + ln.getText() + "','" + getDate() + "'" + ")"));
                ResultSet rs = db.runQuery("");
                break;
        }
    }
    
    private void setSucceed (String str) {
        lb.setText(str);
        switch (str) {
            case "Execution Successful":
                lb.setStyle("-fx-text-fill: green");
                break;
            case "Execution failed":
                lb.setStyle("-fx-text-fill: red");
                break;
        }
    }
    
    private String getDate () {
        return dt.getValue().toString();
    }
    
    @FXML
    private String switchTable () {
        System.out.println(dt.getValue());
        boolean selected = tb.isSelected();
        pn.setDisable(!selected);
        em.setDisable(!selected);
        tb.setText(selected ? "Ensiegnant" : "Student");
        return tb.getText().concat("sList");
    }
    
    private String getGender () {
        return cb.getValue().charAt(0) + "";
    }
    
    @Override
    public void initialize (URL location, ResourceBundle resources) {
        cb.getItems().addAll("Male", "Female");
        lv.getItems().addAll("1", "2", "3", "4");
    }
}
