package com.students.students;

import javafx.scene.control.Button;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;


@SuppressWarnings("ALL")
class MyThread implements Runnable {
    String name;
    Thread thread;
    Button btn;
    TextField tf;
    PasswordField pf;
    
    MyThread (Button btn, TextField tf, PasswordField pf) {
        this.btn = btn;
        this.tf = tf;
        this.pf = pf;
        thread = new Thread(this);
        System.out.println("A New thread is created\n");
        thread.start();
    }
    
    public void run () {
        try {
            while (true) {
                Thread.sleep(500);
                btn.setDisable((tf.getText().isEmpty() || pf.getText().isEmpty()));
            }
        } catch (InterruptedException e) {
            System.out.println("thread Interrupted");
        }
        System.out.println("thread exiting.");
    }
}
