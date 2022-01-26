package com.students.students;

import com.lowagie.text.Font;
import com.lowagie.text.*;
import com.lowagie.text.alignment.HorizontalAlignment;
import com.lowagie.text.alignment.VerticalAlignment;
import com.lowagie.text.pdf.PdfWriter;

import java.awt.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;


public class bultienPDF {
    public static final String PDF_PATH = System.getProperty("user.home") + File.separatorChar + "Desktop";
    private Document document = new Document();
    
    public void createDocument (Student student, double[] notes) {
        try {
            PdfWriter.getInstance(document, new FileOutputStream(PDF_PATH + File.separatorChar + student.last_name.toUpperCase().concat(student.name.concat(".pdf"))));
            Font font = new Font(Font.COURIER, 12, Font.BOLD);
            Table table = new Table(8);
            table.setPadding(5);
            table.setSpacing(1);
            table.setWidth(100);
            // Setting table headers
            Cell cell = new Cell("اللأستاذ : ");
            cell.setHeader(true);
            cell.setVerticalAlignment(VerticalAlignment.CENTER);
            cell.setHorizontalAlignment(HorizontalAlignment.CENTER);
            cell.setColspan(3);
            cell.setBackgroundColor(Color.LIGHT_GRAY);
            table.addCell(cell);
            
            table.addCell(new Phrase("المادة", font));
            table.addCell(new Phrase("التقويم", font));
            table.addCell(new Phrase("الفرض 1", font));
            table.addCell(new Phrase("الفرض 2", font));
            table.addCell(new Phrase("الإختبار", font));
            table.addCell(new Phrase("معدل المادة", font));
            table.addCell(new Phrase("الملاحظة", font));
            table.addCell(new Phrase("الترتيب", font));
            table.endHeaders();
            document.open();
            document.add(table);
            document.close();
        } catch (DocumentException | FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    
}
