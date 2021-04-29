package com.evan.aiu.ai;

import com.evan.aiu.utils.BaiduApi.Base64Util;
import com.evan.aiu.utils.BaiduApi.FileUtil;
import com.evan.aiu.utils.BaiduApi.HttpUtil;
import org.springframework.stereotype.Service;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

@Service
public class ApplyAi {
    public static String animal(String path) {
        // 请求url
        String url = "https://aip.baidubce.com/rest/2.0/image-classify/v1/animal";
        try {

            byte[] imgData = null;
            URL urls = null;
            InputStream input = null;
            try{
                //String newUrl = "\""+path+"\"";
                String newUrl = path.substring(1,path.length()-1);
                System.out.println(newUrl);
                urls = new URL(newUrl);
                HttpURLConnection httpUrl = (HttpURLConnection) urls.openConnection();
                httpUrl.connect();
                httpUrl.getInputStream();
                input = httpUrl.getInputStream();
            }catch (Exception e) {
                e.printStackTrace();
                return null;
            }
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buf = new byte[1024];
            int numBytesRead = 0;
            while ((numBytesRead = input.read(buf)) != -1) {
                output.write(buf, 0, numBytesRead);
            }
            imgData = output.toByteArray();
            output.close();
            input.close();


            // 本地文件路径
            //downloadPicture("https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=3002158521,1917679147&fm=26&gp=0.jpg");
            //String filePath = "G:/test.jpg";   //需要改两处，第一处就将引号内部的[本地文件路径]替换为你想要识别的动物图片的地址，小编这里填的是“D:\甲骨文代码\学习总结图片\Animal\three.jpeg”（要具体到图片）
            //byte[] imgData = FileUtil.readFileByBytes(filePath);
            String imgStr = Base64Util.encode(imgData);
            String imgParam = URLEncoder.encode(imgStr, "UTF-8");

            String param = "image=" + imgParam;

            // 注意这里仅为了简化编码每一次请求都去获取access_token，线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
            String accessToken = "24.40787b47d0d15493ccfc46cfb2f73058.2592000.1622191115.282335-24006196";  //第二处改的值为小编要大家复制到记事本的那个token值

            String result = HttpUtil.post(url, accessToken, param);
            System.out.println(result);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
    private static void downloadPicture(String urlList) {
        URL url = null;
        int imageNumber = 0;

        try {
            url = new URL(urlList);
            DataInputStream dataInputStream = new DataInputStream(url.openStream());

            String imageName =  "G:/test.jpg";

            FileOutputStream fileOutputStream = new FileOutputStream(new File(imageName));
            ByteArrayOutputStream output = new ByteArrayOutputStream();

            byte[] buffer = new byte[1024];
            int length;

            while ((length = dataInputStream.read(buffer)) > 0) {
                output.write(buffer, 0, length);
            }
            byte[] context=output.toByteArray();
            fileOutputStream.write(output.toByteArray());
            dataInputStream.close();
            fileOutputStream.close();
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
