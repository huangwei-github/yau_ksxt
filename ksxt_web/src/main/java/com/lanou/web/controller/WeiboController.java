package com.lanou.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class WeiboController {

    @RequestMapping("/bo.do")
    public String upWeiBo() {
        String httpUrl = "http://api.tianapi.com/txapi/weibohot/?&key=8467f3a3352955ebece1dcc719993e7d";
        String jsonResult = request(httpUrl);
        System.out.println(jsonResult);
        return jsonResult;
    }

    /**
     * @param httpUrl
     *            :请求接口
     *
     *            :参数
     * @return 返回结果
     */
    public static String request(String httpUrl) {
        BufferedReader reader = null;
        String result = null;
        StringBuffer sbf = new StringBuffer();

        try {
            URL url = new URL(httpUrl);
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            InputStream is = connection.getInputStream();
            reader = new BufferedReader(new InputStreamReader(is, "UTF-8"));
            String strRead = null;
            while ((strRead = reader.readLine()) != null) {
                sbf.append(strRead);
                sbf.append("\r\n");
            }
            reader.close();
            result = sbf.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

//        $(document).ready(function(){
//            $('#button').click(function(){
//                $.ajax({
//                        type:"GET",
//                        url:"http://api.tianapi.com/txapi/weibohot/?&key=8467f3a3352955ebece1dcc719993e7d",
//                        dataType:"json",
//                        success:function(data){
//                    var txapi="<ul>";
//                    for(var i=0; i<10; i++)
//                    {
//                        txapi+="<li>"+data["newslist"][i]["title"]+"</li>";
//                        txapi+="<li>"+data["newslist"][i]["description"]+"</li>";
//                        txapi+="<li>"+data["newslist"][i]["picUrl"]+"</li>";
//                        txapi+="<li>"+data["newslist"][i]["url"]+"</li>";
//                    }
//                    txapi+="</ul>";
//                    $('#result').append(txapi);
//                }
//
//

}
