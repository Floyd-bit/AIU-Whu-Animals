package com.evan.aiu.result;

public class Result {
    //响应码,本应是枚举值，做了简化
    private int code;

    public Result(int code){
        this.code = code;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
