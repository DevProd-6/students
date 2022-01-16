package com.students.students;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DbUtils {
    private Connection con;
    
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
        String status = connect();
        if (status.equals("Connection successful")) {
            try {
                return con.createStatement().executeQuery(query);
            } catch (SQLException e) {
                System.out.println("runQuery() exception starts here : " + e);
                return null;
            }
        } else return null;
    }
    
    public String run (String query) {
        String status = connect();
        if (status.equals("Connection successful")) {
            try {
                con.createStatement().execute(query);
            } catch (SQLException e) {
                System.out.println("run() exception starts here : " + e);
                return "Execution failed";
            }
        }
        return "Execution Successful";
    }
}
