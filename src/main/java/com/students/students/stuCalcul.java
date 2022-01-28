package com.students.students;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;
import java.util.stream.DoubleStream;


public class stuCalcul {
    DbUtils db = new DbUtils();
    
    private double[] getNotes (String mdl, String id) {
        System.out.println("getNotes started...");
        double[] notes = new double[3];
        ResultSet rs = db.runQuery("SELECT " + mdl.concat("_cc," + mdl.concat("_dv," + mdl.concat("_ex"))) + " FROM notes_cc,notes_dv,notes_exmn WHERE notes_cc.stu_id = " + id + " and notes_dv.stu_id = " + id + " and notes_exmn" +
         ".stu_id = " + id);
        try {
            if (rs.next()) {
                notes[0] = rs.getDouble(mdl + "_cc");
                notes[1] = rs.getDouble(mdl + "_dv");
                notes[2] = rs.getDouble(mdl + "_ex");
            }
            System.out.println("getNotes finished...");
            db.close();
            return notes;
        } catch (SQLException ex) {
            ex.printStackTrace();
            db.close();
            return null;
        }
    }
    
    private double calcModuleMoy (String mdl, String id) {
        System.out.println("calcModuleMoy started...");
        System.out.println("calcModuleMoy finished...");
        return DoubleStream.of(Objects.requireNonNull(getNotes(mdl, id))).sum() / 3;
    }
    
    public double[] calcGenMoy (String StudentID) throws SQLException {
        double[] notes = new double[13];
        String[] modules = {"math", "arabic", "french", "english", "islamic", "civil", "geo_histo", "sport", "physics", "science", "informatique", "music", "design"};
        ResultSet rs = db.runQuery("SELECT * FROM notes_moy WHERE stu_id = " + StudentID);
        if (rs.next()) {
            for (int i = 0; i < 13; i++) {
                System.out.println("iteration " + i);
                notes[i] = calcModuleMoy(modules[i], StudentID);
            }
            db.close();
            db.run("DELETE FROM notes_moy WHERE stu_id = " + StudentID);
        } else {
            for (int i = 0; i < 13; i++) {
                System.out.println("iteration " + i);
                notes[i] = calcModuleMoy(modules[i], StudentID);
            }
            db.close();
        }
        db.run("INSERT INTO notes_moy VALUES (" + StudentID + "," + notes[0] + "," + notes[1] + "," + notes[2] + "," + notes[3] + "," + notes[4] + "," + notes[5] + "," + notes[6] + "," + notes[7] + "," + notes[8] + "," + notes[9] + "," + notes[10] + "," + notes[11] + "," + notes[12] + ")");
        insertRemark(notes, StudentID);
        for (int i = 0; i < 13; i++) notes[i] = notes[i] * getCoef(modules[i], getStudentLev(StudentID));
        return notes;
    }
    
    private int getCoef (String module, String niv) {
        try {
            ResultSet rs = db.runQuery("SELECT coef FROM coef WHERE modul = '" + module + "' and niv = " + niv);
            int a = (rs.next() ? rs.getInt("coef") : 0);
            db.close();
            return a;
        } catch (SQLException e) {
            return 0;
        }
        
    }
    
    private String getStudentLev (String id) {
        try {
            ResultSet rs = db.runQuery("SELECT niv_scho FROM stu_class WHERE stu_id = " + id);
            int a = (rs.next() ? rs.getInt("niv_scho") : 1);
            db.close();
            return "" + a;
        } catch (SQLException e) {
            return "1";
        }
    }
    
    private void insertRemark (double[] notes, String id) {
        db.run("DELETE FROM remark WHERE stu_id = " + id);
        db.run("INSERT INTO remark VALUES (" + id + "," + getRem(notes[0]) + "," + getRem(notes[1]) + "," + getRem(notes[2]) + "," + getRem(notes[3]) + "," + getRem(notes[12]) + "," + getRem(notes[10]) + "," + getRem(notes[9]) + "," + getRem(notes[6]) + "," + getRem(notes[5]) + "," + getRem(notes[4]) + "," + getRem(notes[7]) + "," + getRem(notes[8]) + "," + getRem(notes[11]) + ")");
    }
    
    private String getRem (double note) {
        if (note == 20) {
            return "'Excellent'";
        } else if (note < 20 && note >= 15) {
            return "'Bon'";
        } else if (note < 15 && note > 11) {
            return "'Satisfaisant'";
        } else if (note >= 10 && note < 11) {
            return "'Moyenne'";
        } else {
            return "'Mauvaise'";
        }
    }
}
