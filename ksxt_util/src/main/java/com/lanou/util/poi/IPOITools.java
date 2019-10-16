package com.lanou.util.poi;

import com.lanou.entity.pojo.TbOnline;
import com.lanou.entity.pojo.TbSelection;
import com.lanou.entity.pojo.TbSubjection;
import com.lanou.util.GException;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class IPOITools {

    private static final int E=9;
    private static final int F=10;

    public static List<TbSelection> uploadSelection(File file) throws GException {
        List<TbSelection> questions = new ArrayList<TbSelection>();
        Workbook workbook = null;
        try {
            workbook = initTools(file);
        } catch (IOException e) {
            throw new GException("POI工具IO异常");
        }
        if (null == workbook) {
            return  null;
        }
        //将文件内容同步到List<TbSelection> questions中
        return syncSelection(workbook,questions);
    }

    public static List<TbOnline> uploadOnline(File file) throws GException {
        List<TbOnline> questions = new ArrayList<TbOnline>();
        Workbook workbook = null;
        try {
            workbook = initTools(file);
        } catch (IOException e) {
            throw new GException("POI工具IO异常");
        }
        if (null == workbook) {
            return  null;
        }
        return syncOnline(workbook,questions);
    }

    public static List<TbSubjection> uploadSubjection(File file) throws GException {
        List<TbSubjection> questions = new ArrayList<TbSubjection>();
        Workbook workbook = null;
        try {
            workbook = initTools(file);
        } catch (IOException e) {
            throw new GException("POI工具IO异常");
        }
        if (null == workbook) {
            return  null;
        }

        return syncSubjection(workbook,questions);
    }


    /*以下都是工具*/
    private static Workbook initTools(File file) throws IOException {
        FileInputStream fis = new FileInputStream(file);
        Workbook workbook = new HSSFWorkbook(fis);
        return workbook;
    }

    private static List<TbSelection> syncSelection(Workbook workbook,List<TbSelection> questions) {
        //拿到工作表
        Sheet sheet = workbook.getSheet("sheet1");
        //去掉首行
        sheet.removeRow(sheet.getRow(0));
        for (Row row : sheet) {
            TbSelection selection = new TbSelection();
            Cell tmp = row.getCell(0);
            if (null == tmp || tmp.getStringCellValue() == "") {
                continue;
            }
            //将ｅｘｃｅｌ的内容同步到实体集合
            //根据选项E,F的值是否为空，来判断当前是否为单选多选。

            selection.setQuestion(row.getCell(0).getStringCellValue());
            selection.setAnswer(row.getCell(1).getStringCellValue());
            selection.setScore((int)row.getCell(2).getNumericCellValue());
            selection.setWeight((byte)row.getCell(3).getNumericCellValue());
            selection.setCourse((int)row.getCell(4).getNumericCellValue());
            selection.setSelectiona(row.getCell(5).getStringCellValue());
            selection.setSelectionb(row.getCell(6).getStringCellValue());
            selection.setSelectionc(row.getCell(7).getStringCellValue());
            selection.setSelectiond(row.getCell(8).getStringCellValue());
            //通过try块，判断是否为多选题，若不是设置为空
            try{
                selection.setSelectione(row.getCell(E).getStringCellValue());
                selection.setSelectionf(row.getCell(E).getStringCellValue());
            }catch (Exception e){
                selection.setSelectione("");
                selection.setSelectionf("");
            }
            //通过try块，判断是否有notes，若无设置为空
            try{
                selection.setNotes(row.getCell(11).getStringCellValue());
            }catch (Exception e){
                selection.setNotes("");
            }
            questions.add(selection);
        }
        return questions;
    }

    private static List<TbSubjection> syncSubjection(Workbook workbook,List<TbSubjection> questions) {
        //拿到工作表
        Sheet sheet = workbook.getSheet("sheet1");
        //去掉首行
        sheet.removeRow(sheet.getRow(0));

        for (Row row : sheet) {
            TbSubjection subjection = new TbSubjection();
            Cell tmp = row.getCell(0);
            if (null == tmp || tmp.getStringCellValue() == "") {
                continue;
            }
            //将ｅｘｃｅｌ的内容同步到实体集合
            subjection.setQuestion(row.getCell(0).getStringCellValue());
            subjection.setReferrence(row.getCell(1).getStringCellValue());
            subjection.setScore((int)row.getCell(2).getNumericCellValue());
            subjection.setWeight((byte)row.getCell(3).getNumericCellValue());
            subjection.setCourse((int)row.getCell(4).getNumericCellValue());
            try{
                subjection.setNotes(row.getCell(5).getStringCellValue());
            }catch (Exception e){
                subjection.setNotes("");
            }
            questions.add(subjection);
        }
        return questions;
    }


    private static List<TbOnline> syncOnline(Workbook workbook,List<TbOnline> questions) {
        //拿到工作表
        Sheet sheet = workbook.getSheet("sheet1");
        //去掉首行
        sheet.removeRow(sheet.getRow(0));

        for (Row row : sheet) {
            TbOnline online = new TbOnline();
            Cell tmp = row.getCell(0);
            if (null == tmp || tmp.getStringCellValue() == "") {
                continue;
            }
            //将ｅｘｃｅｌ的内容同步到实体集合
            online.setQuestion(row.getCell(0).getStringCellValue());
            online.setReferrence(row.getCell(1).getStringCellValue());
            online.setScore((int)row.getCell(2).getNumericCellValue());
            online.setWeight((byte)row.getCell(3).getNumericCellValue());
            online.setCourse((int)row.getCell(4).getNumericCellValue());
            try{
                online.setNotes(row.getCell(5).getStringCellValue());
            }catch (Exception e){
                online.setNotes("");
            }
            questions.add(online);
        }
        return questions;
    }




}
