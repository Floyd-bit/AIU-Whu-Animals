package com.evan.aiu.result;
import lombok.Data;

@Data
public class Result {
    //响应码,本应是枚举值，做了简化
    private int code;
    private String message;
    private Object data;

    public Result(int code,String message,Object data){
        this.message = message;
        this.code = code;
        this.data = data;
    }
}
