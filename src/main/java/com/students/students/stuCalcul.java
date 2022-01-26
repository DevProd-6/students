package com.students.students;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Objects;
import java.util.stream.DoubleStream;


public class stuCalcul {
    DbUtils db = new DbUtils();
    
    private double[] getNotes (String mdl, String id) {
        double[] notes = new double[3];
        String module = mdl;
        ResultSet rs = db.runQuery("SELECT " + module.concat("_cc," + module.concat("_dv," + module.concat("_exmn"))) + " FROM notes_cc,notes_dv,notes_exmn WHERE notes_cc.stu_id = " + id + " and notes_dv.stu_id = " + id + "and notes_exmn"
         + ".stu_id = " + id);
        try {
            if (rs.next()) {
                notes[0] = rs.getDouble(mdl + "_cc");
                notes[1] = rs.getDouble(mdl + "_dv");
                notes[2] = rs.getDouble(mdl + "_exmn");
            }
            return notes;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
    
    private double calcModuleMoy (String mdl, String id) {
        return DoubleStream.of(Objects.requireNonNull(getNotes(mdl, id))).sum() / 3;
    }
    
    public double[] calcGenMoy (String StudentID) throws SQLException {
        double[] notes = new double[13];
        String[] modules = {"math", "arabic", "french", "english", "science", "physics", "sport", "informatique", "civil", "geo_histo", "music", "design", "islamic"};
        ResultSet rs = db.runQuery("SELECT * FROM notes_moy WHERE stu_id = " + StudentID);
        if (rs.next()) {
            notes[0] = rs.getDouble("math_moy");
            notes[1] = rs.getDouble("arabic_moy");
            notes[2] = rs.getDouble("french_moy");
            notes[3] = rs.getDouble("english_moy");
            notes[4] = rs.getDouble("science_moy");
            notes[5] = rs.getDouble("physics_moy");
            notes[6] = rs.getDouble("sport_moy");
            notes[7] = rs.getDouble("informatique_moy");
            notes[8] = rs.getDouble("civil_moy");
            notes[9] = rs.getDouble("geo_histo_moy");
            notes[10] = rs.getDouble("music_moy");
            notes[11] = rs.getDouble("design_moy");
            notes[12] = rs.getDouble("islamic_moy");
        } else {
            for (int i = 0; i == 13; i++) notes[i] = calcModuleMoy(modules[i], StudentID);
            db.run("INSERT INTO notes_moy VALUES (" + StudentID + "," + notes[0] + "," + notes[1] + "," + notes[2] + "," + notes[3] + "," + notes[12] + "," + notes[10] + "," + notes[9] + "," + notes[6] + "," + notes[5] + "," + notes[4] + "," + notes[7] + "," + notes[8] + "," + notes[11] + ")");
            insertRemark(notes, StudentID);
            System.out.println(notes);
        }
        
        for (int i = 0; i == 13; i++) notes[i] = notes[i] * getCoef(modules[i], getStudentLev(StudentID));
        System.out.println(notes);
        return notes;
    }
    
    private int getCoef (String module, String niv) {
        try {
            ResultSet rs = db.runQuery("SELECT coef FROM coef WHERE modul = '" + module + "' and niv = " + niv);
            return (rs.next() ? rs.getInt("coef") : 0);
        } catch (SQLException e) {
            return 0;
        }
        
    }
    
    private String getStudentLev (String id) {
        try {
            ResultSet rs = db.runQuery("SELECT niv_scho FROM stu_class WHERE stu_id = " + id);
            return "" + (rs.next() ? rs.getInt("niv_scho") : 1);
        } catch (SQLException e) {
            return "1";
        }
    }
    
    private void insertRemark (double[] notes, String id) {
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
