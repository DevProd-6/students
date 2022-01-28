package com.students.students;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class Student {
    private DbUtils db = new DbUtils();
    private String id;
    private String name;
    private String last_name;
    private String dateNais;
    private String gender;
    private String cls;
    private String niv;
    private ArrayList<Double> notes = new ArrayList<Double>();
    private ArrayList<String> obsrv = new ArrayList<String>();
    
    Student (String id, String module) {
        try {
            ResultSet rs = db.runQuery("SELECT id, name, last_name, date_nais, gender, niv_scho, class FROM StudentsList,stu_class WHERE id=stu_id and id = " + id);
            if (rs.next()) {
                this.id = String.valueOf(rs.getInt(1));
                name = rs.getString(2);
                last_name = rs.getString(3);
                dateNais = String.valueOf(rs.getDate(4));
                gender = rs.getString(5);
                niv = String.valueOf(rs.getInt(6));
                cls = String.valueOf(rs.getInt(7));
            }
            db.close();
            stuCalcul stc = new stuCalcul();
            stc.calcGenMoy(id);
            String query = "SELECT " + module + "_cc, " + module + "_dv, " + module + "_ex, " + module + "_moy, " + module + "_rem FROM notes_cc,notes_dv,notes_exmn,notes_moy,remark WHERE notes_cc.stu_id = " + id + " AND notes_dv.stu_id "
             + "= " + id + " AND " + "notes_exmn.stu_id = " + id + " AND notes_moy.stu_id = " + id + " AND remark.stu_id = " + id;
            rs = db.runQuery(query);
            if (rs.next()) {
                notes.add(round(rs.getDouble(module + "_cc")));
                notes.add(round(rs.getDouble(module + "_dv")));
                notes.add(round(rs.getDouble(module + "_ex")));
                notes.add(round(rs.getDouble(module + "_moy")));
                obsrv.add(rs.getString(module + "_rem"));
            }
            db.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
    }
    
    private double round (double a) {
        return Math.round(a * 100) / 100;
    }
    
    public ArrayList<Double> getNotes () {
        return notes;
    }
    
    public void setNotes (ArrayList<Double> notes) {
        this.notes = notes;
    }
    
    public ArrayList<String> getObsrv () {
        return obsrv;
    }
    
    public void setObsrv (ArrayList<String> obsrv) {
        this.obsrv = obsrv;
    }
    
    public String getId () {
        return id;
    }
    
    public String getName () {
        return name;
    }
    
    public String getLast_name () {
        return last_name;
    }
    
    public String getDateNais () {
        return dateNais;
    }
    
    public String getGender () {
        return gender;
    }
    
    public String getCls () {
        return cls;
    }
    
    public String getNiv () {
        return niv;
    }
}
