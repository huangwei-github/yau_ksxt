package com.lanou.util;

import com.lanou.entity.pojo.TbSelection;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class POIUtils {

    private final String FILE_LOCATION = "/home/huangwei/Desktop/考题.xls";

    private Workbook parseXls() {
        try {
            FileInputStream fis = new FileInputStream(new File(FILE_LOCATION));
            Workbook workbook = new HSSFWorkbook(fis);
            return workbook;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<TbSelection> getText(Workbook workbook) {
        //获得工作表1
        Sheet sheet = workbook.getSheetAt(0);
        //去除表头
        sheet.removeRow(sheet.getRow(0));
        //创建List<SelectionQuestion>对象
        List<TbSelection> questions = new ArrayList<TbSelection>();
        for (Row row : sheet) {
            String temp = row.getCell(0).getStringCellValue();
            if( null == temp | temp == "") {
                continue;
            }
            TbSelection question = new TbSelection();
            question.setNotes(row.getCell(0).getStringCellValue());
            question.setSelectiona(row.getCell(1).getStringCellValue());
            question.setSelectionb(row.getCell(2).getStringCellValue());
            question.setSelectionc(row.getCell(3).getStringCellValue());
            question.setSelectiond(row.getCell(4).getStringCellValue());
            question.setAnswer(row.getCell(5).getStringCellValue());
            questions.add(question);
        }

        return questions;
    }

    public static void main(String[] args) {
        POIUtils utils = new POIUtils();
        List<TbSelection> questions = utils.getText(utils.parseXls());
        for (TbSelection question : questions) {
            System.out.println(question.toString());
        }
    }

}
