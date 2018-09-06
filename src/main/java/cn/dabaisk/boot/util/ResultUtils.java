package cn.dabaisk.boot.util;


import com.google.gson.Gson;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class ResultUtils {
    private String result;
    private String msg;
    private Object data;

    public ResultUtils() {

    }

    public ResultUtils(String result, String msg, Object data) {
        this.result = result;
        this.msg = msg;
        this.data = data;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String toAdminJson() {
        Gson gson = new Gson();
        Map<String, Object> map = new HashMap<String, Object>();
        if (getData() instanceof PageView) {
            PageView pageView = (PageView) getData();
            map.put("total", pageView.getRecordCount());
            map.put("rows", pageView.getRecordList());
            if (pageView.getFooter().size() != 0) {
                map.put("footer", pageView.getFooter());
            }
        }
        gson.toJson(map);
        // 传入Map类型
        try {
            return gson.toJson(map);
        } catch (Exception e) {
            e.printStackTrace();
            return err(e);
        }
    }

    public String err(Exception e) {
        Gson gson = new Gson();
        Map map = new HashMap();
        map.put("result", "FAIL");
        map.put("msg", e.getMessage());
        return gson.toJson(map);
    }

    public String toJson() {
        Gson gson = new Gson();
        try {
            return gson.toJson(this);
        } catch (Exception e) {
            e.printStackTrace();
            return err(e);
        }
    }

    public static void main(String[] args) {
        ResultUtils r = new ResultUtils();
        r.setResult("SUCCESS");
        r.setMsg("注册成功");
        System.out.println(r.toJson());
        Map<String, String> m = new HashMap<String, String>();
        m.put("111", "rrr");
        m.put("112", "zzz");
        List<Object> data = new ArrayList<Object>();
        data.add(m);
        r.setData(data);
        System.out.println(r.toJson());
        System.out.println(r.toAdminJson());

    }

    public String soString() {
        return "ResultUtils{" +
                "result=" + result +
                ", msg=" + msg +
                ", data=" + data +
                "}";
    }
}