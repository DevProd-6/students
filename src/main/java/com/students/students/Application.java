package com.students.students;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.scene.control.TextInputDialog;
import javafx.stage.Stage;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Objects;


public class Application extends javafx.application.Application {
    public static void main (String[] args) {
        launch();
    }
    
    @Override
    public void start (Stage stage) throws IOException {
        String file = "src/main/resources/com/students/setup/setup.dev";
        BufferedReader reader = new BufferedReader(new FileReader(file));
        boolean st = reader.readLine().contains("false");
        reader.close();
        if (st) {
            TextInputDialog td = new TextInputDialog("root");
            td.setHeaderText("enter database username");
            TextInputDialog td2 = new TextInputDialog("");
            td2.setHeaderText("enter database password");
            DbUtils db = new DbUtils();
            if (db.excuteFile("src/main/resources/com/students/sql/sql.sql")) {
                FileWriter myWriter = new FileWriter(file);
                myWriter.write(td.showAndWait().get() + "," + td2.showAndWait().get() + ",true");
                myWriter.close();
            } else return;
        }
        FXMLLoader fxmlLoader = new FXMLLoader(Application.class.getResource("Logview.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        scene.getStylesheets().add(Objects.requireNonNull(getClass().getResource("/com/students/css/ui.css")).toExternalForm());
        stage.setTitle("Students Management");
        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();
    }
}