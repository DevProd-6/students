package com.students.students;

import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;


public class Application extends javafx.application.Application {
    public static void main (String[] args) {
        launch();
    }
    
    @Override
    public void start (Stage stage) throws IOException {
        FXMLLoader fxmlLoader = new FXMLLoader(Application.class.getResource("Logview.fxml"));
        Scene scene = new Scene(fxmlLoader.load());
        stage.setTitle("Students Management");
        stage.setScene(scene);
        stage.setResizable(false);
        stage.show();
    }
}