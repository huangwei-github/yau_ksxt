package com.lanou.util;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;
import com.lanou.entity.pojo.TbOnline;
import com.lanou.entity.pojo.TbSelection;
import com.lanou.entity.pojo.TbSubjection;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;

public class PDFTools {

    private static Font kaiFont;

    private static Font heiFont;

    static{
        //初始化文档对象

        //初始化resources中的字体库
        BaseFont baseFont1 = null;
        BaseFont baseFont2 = null;
        try {
            baseFont1 = BaseFont.createFont("simkai.ttf",BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
            baseFont2 = BaseFont.createFont("simhei.ttf",BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        kaiFont = new Font(baseFont1);
        heiFont = new Font(baseFont2);
    }



    // Document(Title, Author, Password) -> Paragraph -> List -> ListItem
    // info -> ('selection', List<TbSelection>) ('subjection', List<TbSubjection>) ('online', List<Online>)
    public static void genPaper(Map<String, Object> info) {
        Document document = new Document();
        try {
            PdfWriter.getInstance(document, new FileOutputStream(Constant.FILE_LOCATION + "test.pdf"));
        } catch (DocumentException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        document.open();
        try {
            /*生成选择题*/
            Paragraph selection = new Paragraph("一.选择题(共30分，每道题3分)", heiFont);
            List listForSelection = new List(List.ORDERED);
            java.util.List<TbSelection> selections = (java.util.List<TbSelection>) info.get("selection");
            for (int i = 0; i < selections.size(); i++) {
                ListItem question = new ListItem( selections.get(i).getQuestion() + " \n" +
                        "A."      + selections.get(i).getSelectiona() +
                        "    B." + selections.get(i).getSelectionb() +
                        "    C." + selections.get(i).getSelectionc() +
                        "    D." + selections.get(i).getSelectiond(), kaiFont);
                listForSelection.add(question);
            }
            selection.add(listForSelection);

            /*生成主观题*/
            Paragraph subjection = new Paragraph("二、主观题（共30分，每道题6分)", heiFont);
            List listForSubjection = new List(List.ORDERED);
            java.util.List<TbSubjection> subjections = (java.util.List<TbSubjection>) info.get("subjection");
            for (int i = 0; i < subjections.size(); i++) {
                ListItem question = new ListItem(subjections.get(i).getQuestion() + " \n\n\n\n", kaiFont);
                listForSubjection.add(question);
            }
            subjection.add(listForSubjection);

            /*生成编程题*/
            Paragraph online = new Paragraph("三、编程题（共40分，每道题20分)", heiFont);
            List listForOnline = new List(List.ORDERED);
            java.util.List<TbOnline> onlines = (java.util.List<TbOnline>) info.get("online");
            for (int i = 0; i < onlines.size(); i++) {
                ListItem question = new ListItem(onlines.get(i).getQuestion() + " \n\n\n\n", kaiFont);
                listForOnline.add(question);
            }

            online.add(listForOnline);

            document.add(selection);
            document.add(subjection);
            document.add(online);
            document.close();
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }



}
