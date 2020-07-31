package com.meeting.util;

import java.util.HashMap;
import java.util.Map;

//传递Json的工具类
public class JsonMsg {

    private int code;
    private String msg;
    private Map<String, Object> extendInfo = new HashMap<>();

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Map<String, Object> getExtendInfo() {
        return extendInfo;
    }

    public void setExtendInfo(Map<String, Object> extendInfo) {
        this.extendInfo = extendInfo;
    }

    public static JsonMsg success() {
        JsonMsg jsonMsg = new JsonMsg();
        jsonMsg.setCode(100);
        jsonMsg.setMsg("操作成功!");
        return jsonMsg;
    }

    public static JsonMsg fail() {
        JsonMsg jsonMsg = new JsonMsg();
        jsonMsg.setCode(200);
        jsonMsg.setMsg("操作失败！");
        return jsonMsg;
    }

    public JsonMsg addInfo(String key, Object value) {
        this.extendInfo.put(key, value);
        return this;
    }


}
