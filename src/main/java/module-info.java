module com.students.students {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;
    requires org.mariadb.jdbc;
    requires com.github.librepdf.openpdf;
    requires java.desktop;
    requires ibatis.core;
    
    opens com.students.students to javafx.fxml;
    exports com.students.students;
}