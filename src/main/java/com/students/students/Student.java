package com.students.students;

import java.sql.ResultSet;
import java.sql.SQLException;


public class Student {
    public String id, name, last_name, dateNais, gender, cls, niv;
    DbUtils db = new DbUtils();
    
    Student (String id) {
        try {
            ResultSet rs = db.runQuery("SELECT id, name, last_name, date_nais, gender, niv_scho, class FROM StudentsList,stu_class WHERE id=stu_id and id = " + id);
            if (rs.next()) {
                this.id = String.valueOf(rs.getInt(0));
                name = rs.getString(1);
                last_name = rs.getString(2);
                dateNais = String.valueOf(rs.getDate(3));
                gender = rs.getString(4);
                niv = String.valueOf(rs.getInt(5));
                cls = String.valueOf(rs.getInt(6));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
}
