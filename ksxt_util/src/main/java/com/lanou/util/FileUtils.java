package com.lanou.util;

import cn.hutool.core.util.StrUtil;
import org.apache.commons.io.IOUtils;
import org.csource.common.MyException;
import org.csource.common.NameValuePair;
import org.csource.fastdfs.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileUtils {

    private static StorageServer storageServer;

    private static StorageClient storageClient;

    private static TrackerServer trackerServer;

    private static TrackerClient trackerClient;


    static {
        try {
            ClientGlobal.initByProperties("fastdfs-client.properties");
            // 链接FastDFS服务器，创建tracker和Stroage
            trackerClient = new TrackerClient();
            trackerServer = trackerClient.getConnection();
            String storageServerIp = getStorageServerIp(trackerClient, trackerServer);
            storageServer = getStorageServer(storageServerIp);
            storageClient = new StorageClient(trackerServer, storageServer);
        } catch (Exception e) {
            System.out.println("初始化FastDFS异常");
        }
    }

    //接受网络文件
    public static String fastDFSUpload(MultipartFile file) throws GException {
        String ext_Name = file.getOriginalFilename().split("\\.")[1];
        String file_Name = file.getOriginalFilename().split("\\.")[0];

        byte[] bytes = null;
        try {
            bytes = file.getBytes();
        } catch (IOException e) {
            e.printStackTrace();
        }
        String filePath = uploadFile(bytes, ext_Name, file_Name);
        return filePath;
    }

    //接受磁盘文件
    public static String fastDFSUpload(File file) throws GException {
        String ext_Name = file.getName().split("\\.")[1];
        String file_Name = file.getName().split("\\.")[0];


        byte[] bytes = null;
        try {
            FileInputStream fis = new FileInputStream(file);
            bytes = new byte[fis.available()];
            fis.read(bytes);
        } catch (IOException e) {
            e.printStackTrace();
        }
        String filePath = uploadFile(bytes, ext_Name, file_Name);
        return filePath;
    }

    /**
     * FastDFS实现文件下载
     *
     * @param filePath
     */
    public static void fastDFSDownload(String filePath) {
        try {
            byte[] b = storageClient.download_file("group1", filePath);
            if (b == null) {
                throw new IOException("文件" + filePath + "不存在");
            }

            String fileName = filePath.substring(filePath.lastIndexOf("/") + 1);
            FileOutputStream fileOutputStream = new FileOutputStream("c://" + fileName);
            IOUtils.write(b, fileOutputStream);
            fileOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * FastDFS获取将上传文件信息
     */
    public static void fastDFSGetFileInfo(String filePath) {
        try {
            FileInfo fi = storageClient.get_file_info("group1", filePath);
            if (fi == null) {
                throw new IOException("文件" + filePath + "不存在");
            }

            System.out.println("文件信息=" + fi.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * FastDFS获取文件名称
     */
    public static void fastDFSGetFileName(String filePath) {
        try {
            NameValuePair[] nvps = storageClient.get_metadata("group1", filePath);
            if (nvps == null) {
                throw new IOException("文件" + filePath + "不存在");
            }

            System.out.println(nvps[0].getName() + "." + nvps[0].getValue());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * FastDFS实现删除文件
     */
    public static void fastDFSDelete(String filePath) {
        try {
            int i = storageClient.delete_file("group1", filePath);
            System.out.println(i == 0 ? "删除成功" : "删除失败:" + i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String uploadFile(byte[] byteFile, String ext_file, String file_Name) throws GException {

        // 拼接服务区的文件路径
        StringBuffer sbPath = new StringBuffer();
        sbPath.append("http://94.191.81.220:8888/");
        //利用字节流上传文件
//            NameValuePair[] nvps = new NameValuePair[1];
//            nvps[0] = new NameValuePair(file_Name, ext_file);
        String[] strings = new String[0];
        try {
            strings = storageClient.upload_file(byteFile, ext_file, null);
        } catch (IOException e) {
            throw new GException("IO异常");
        } catch (MyException e) {
            e.printStackTrace();
        }
        sbPath.append(StrUtil.join("/", strings));
        System.out.println("上传路径=" + sbPath.toString());
        return sbPath.toString();
    }

    /**
     * 得到Storage服务
     *
     * @param storageIp
     * @return 返回Storage服务
     */
    private static StorageServer getStorageServer(String storageIp) throws GException {
        StorageServer storageServer = null;
        if (storageIp != null && !("").equals(storageIp)) {
            try {
                // ip port store_path下标
                storageServer = new StorageServer(storageIp, 23000, 1);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return storageServer;
    }

    /**
     * 获得可用的storage IP
     *
     * @param trackerClient
     * @param trackerServer
     * @return 返回storage IP
     */
    private static String getStorageServerIp(TrackerClient trackerClient, TrackerServer trackerServer) {
        String storageIp = null;
        if (trackerClient != null && trackerServer != null) {
            try {
                StorageServer storageServer = trackerClient.getStoreStorage(trackerServer, "group1");
                storageIp = storageServer.getSocket().getInetAddress().getHostAddress();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return storageIp;
    }
}
