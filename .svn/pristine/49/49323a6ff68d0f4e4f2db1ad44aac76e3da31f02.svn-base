package com.lanou.web.controller;

import com.lanou.entity.dto.OnlinePicDto;
import com.lanou.entity.dto.Online_FileDto;
import com.lanou.entity.dto.Selection_FileDto;
import com.lanou.entity.dto.Subjection_FileDto;
import com.lanou.entity.pojo.TbUser;
import com.lanou.service.IOnlineFileService;
import com.lanou.service.IQuesionService;
import com.lanou.service.ISelectionFileService;
import com.lanou.service.ISubjectionFileService;
import com.lanou.util.*;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Controller
public class FileController {



    @Autowired
    IQuesionService quesionFileService;

    @Autowired
    ISelectionFileService selectionFileService;

    @Autowired
    ISubjectionFileService subjectionFileService;

    @Autowired
    IOnlineFileService onlineFileService;

    /**
     * INFO: 普通文件上传
     * @param file 待上传至FastDFS的文件
     * @return
     */
    @RequestMapping(value = "/uploadimg", method = RequestMethod.POST)
    @ResponseBody
    public Result uploadImg(MultipartFile file) {
        if (file == null) {
            return ResultGenerator.genFailResult("请先选择文件");
        }
        String fileName = "";
        try {
           fileName = FileUtils.fastDFSUpload(file);
        } catch (GException e) {
            return ResultGenerator.genFailResult("文件上传功能异常");
        }
        return ResultGenerator.genSuccessResult(fileName);
    }

    /*
    * INFO: 配合wangEditor进行文件上传
    * 需要返回指定的数据集合
    * */
    @RequestMapping(value = "/eupload", method = RequestMethod.POST)
    @ResponseBody
    public OnlinePicDto eUpload(MultipartFile... file) {
        String[] fileName = new String[file.length];
        for (int i = 0; i < file.length; i ++) {
            if (file[i] != null) {
                try {
                    fileName[i] = FileUtils.fastDFSUpload(file[i]);
                } catch (GException e) {
                    return new OnlinePicDto(400, fileName);
                }
            }
        }
        return new OnlinePicDto(0, fileName);
    }

    /*题库上传三个业务：
    * 1.将题的内容存到数据库
    * 2.文件存到ＦＤＳ
    * 3.将填写题的 文件 的信息放到数据库
    * 4.假如数据库已经保存，而之后的业务出现问题，执行删除已上传到内容的操作
    * */
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    @ResponseBody
    public Result upload(MultipartFile file, String questionType) {
        System.out.println("题型是 : " + questionType);
        String tempLocation = Constant.FILE_LOCATION+ UUID.randomUUID().toString().replaceAll("-", "")+file.getOriginalFilename();
        if ( file == null) {
            return ResultGenerator.genFailResult("请先选择需要上传的文件");
        }
        File tempFile = new File(tempLocation);
        try {
            file.transferTo(tempFile);
        } catch (IOException e) {
            return ResultGenerator.genFailResult("文件有误");
        }

        //1.第一个业务:将题的内容存到数据库
        // 目的：判断题型，操作不同的存库动作；
        // 流程：poi工具解析文件，dao存库
        try {
            if (questionType.equalsIgnoreCase("selection")) {
                quesionFileService.createSelection(tempFile);
            } else if (questionType.equalsIgnoreCase("online")) {
                quesionFileService.createOnline(tempFile);
            } else if (questionType.equalsIgnoreCase("subjection")){
                quesionFileService.createSubjection(tempFile);
            }else{
                return ResultGenerator.genFailResult("题库类型出错，没有该类型");
            }
        }catch (Exception e){
            return ResultGenerator.genFailResult("题库内容格式不正确，请保持与模板一致");
        }

        //2.第二个业务：文件存到ＦＤＳ
        // 目的：假如上面的所有都没有抛错，在下面上传文件到DFS；
        // 流程：调用接口，传MultipartFile这个参数。传完之后没有错误清除掉临时的文件tempFile
        String localAddr = null;
        try {
            localAddr = FileUtils.fastDFSUpload(file);
        } catch (GException e) {
            //TODO 新人须知：删除之前更新数据库的内容
            return ResultGenerator.genFailResult("文件存储错误");
        }
        tempFile.deleteOnExit();//清除该文件

        //3.第三个业务
        //目的：将题库文件信息上传到相应的数据库
        //流程：dto转到数据库，
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat();
        Subject subject = SecurityUtils.getSubject();
        TbUser user = (TbUser) subject.getSession().getAttribute("user");

        //通过(先生成DTO)dto存文件信息到数据库
        try {
            if (questionType.equalsIgnoreCase("selection")) {
                Selection_FileDto selection = new Selection_FileDto();
                selection.setFilename(file.getOriginalFilename());
                selection.setUpload(sdf.format(date));
                selection.setTeacher(user.getId());
                selection.setLocation(localAddr);
                selectionFileService.insertSelectionFileByDto(selection);
            } else if (questionType.equalsIgnoreCase("online")) {
                Online_FileDto onlin = new Online_FileDto();
                onlin.setFilename(file.getOriginalFilename());
                onlin.setUpload(sdf.format(date));
                onlin.setTeacher(user.getId());
                onlin.setLocation(localAddr);
                onlineFileService.insertOnlineFileByDto(onlin);
            } else if (questionType.equalsIgnoreCase("subjection")){
                Subjection_FileDto subjectino = new Subjection_FileDto();
                subjectino.setFilename(file.getOriginalFilename());
                subjectino.setUpload(sdf.format(date));
                subjectino.setTeacher(user.getId());
                subjectino.setLocation(localAddr);
                subjectionFileService.insertSubjectionFileByDto(subjectino);
            }else{
                return ResultGenerator.genFailResult("题库类型出错，没有该类型");
            }
        } catch (Exception e) {
            return ResultGenerator.genFailResult("文件信息保存至数据库发生错误");
        }

        return ResultGenerator.genSuccessResult();
    }

    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public ResponseEntity<byte[]> download(String fileName) {
        File file = new File(Constant.FILE_LOCATION + fileName);
        FileInputStream fis = null;
        byte[] bytes = null;
        HttpHeaders headers = new HttpHeaders();
        try {
             fis = new FileInputStream(file);
             bytes = new byte[fis.available()];
             fis.read(bytes);
             headers.add("Content-Disposition","attachment;fileName=" + fileName);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return new ResponseEntity<byte[]>(bytes, headers, HttpStatus.OK);
    }


}
