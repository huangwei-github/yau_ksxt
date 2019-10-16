package com.lanou.util;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

@Controller
public class TianQiUtil {


    @Test
    public void test(){
        String httpUrl = "http://api.tianapi.com/txapi/tianqi/?&key=8467f3a3352955ebece1dcc719993e7d&city=陕西";
        String jsonResult = request(httpUrl,"116.234.222.36");
        JSONObject object=JSONObject.parseObject(jsonResult);
        JSONArray array=object.getJSONArray("newslist");
        System.out.println(jsonResult);

    }

    @RequestMapping("/haa")
    @ResponseBody
    public JSONObject foo(){
        String httpUrl = "http://api.tianapi.com/txapi/tianqi/?&key=8467f3a3352955ebece1dcc719993e7d&city=陕西";
        String jsonResult = request(httpUrl,"116.234.222.36");
        JSONObject object = JSONObject.parseObject(jsonResult);
        JSONArray arr = object.getJSONArray("newslist");
        JSONObject today = arr.getJSONObject(0);

        return today;
    }

    public static String request(String httpUrl, String httpArg) {
        BufferedReader reader = null;
        String result = null;
        StringBuffer sbf = new StringBuffer();
        httpUrl = httpUrl + "?" + httpArg;

        try {
            URL url = new URL(httpUrl);
            HttpURLConnection connection = (HttpURLConnection) url
                    .openConnection();
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
//    $(document).ready(function(){
//        $('#button').click(function(){
//            $.ajax({
//                    type:"GET",
//                    url:"http://api.tianapi.com/txapi/tianqi/?&key=APIKEY&city=上海",
//                    dataType:"json",
//                    success:function(data){
//                var txapi="<ul>";
//                for(var i=0; i<10; i++)
//                {
//                    txapi+="<li>"+data["newslist"][i]["title"]+"</li>";
//                    txapi+="<li>"+data["newslist"][i]["description"]+"</li>";
//                    txapi+="<li>"+data["newslist"][i]["picUrl"]+"</li>";
//                    txapi+="<li>"+data["newslist"][i]["url"]+"</li>";
//                }
//                txapi+="</ul>";
//                $('#result').append(txapi);
//            }
//});
//            return false;
//        });
//    });
}

