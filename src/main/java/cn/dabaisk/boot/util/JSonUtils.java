package cn.dabaisk.boot.util;

import com.google.gson.Gson;

import java.util.HashMap;
import java.util.Map;

public class JSonUtils {
    public static String toJSon(ResultUtils result) {
        Gson gson = new Gson();
        try {
            return gson.toJson(result);
        } catch (Exception e) {
            e.printStackTrace();
            Map map = new HashMap();
            map.put("result", "FAIL");
            map.put("msg", e.getMessage());
            return gson.toJson(map);
        }
    }
}
