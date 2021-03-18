package com.evan.aiu.result;


public class ResultFactory {

    public static com.evan.aiu.result.Result buildSuccessResult(Object data) {
        return buildResult(ResultCode.SUCCESS, "成功", data);
    }

    public static com.evan.aiu.result.Result buildFailResult(String message) {
        return buildResult(ResultCode.FAIL, message, null);
    }

    public static com.evan.aiu.result.Result buildResult(ResultCode resultCode, String message, Object data) {
        return buildResult(resultCode.code, message, data);
    }

    public static com.evan.aiu.result.Result buildResult(int resultCode, String message, Object data) {
        return new com.evan.aiu.result.Result(resultCode, message, data);
    }
}
