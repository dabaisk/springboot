package cn.dabaisk.boot.base;

import cn.dabaisk.boot.util.PageView;
import com.baomidou.mybatisplus.core.toolkit.sql.SqlHelper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.google.gson.JsonObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.text.SimpleDateFormat;
import java.util.*;

public class BaseController<T> {
    /**
     * ThreadLocal确保高并发下每个请求的request，response都是独立的
     */
    private static ThreadLocal<ServletRequest> currentRequest = new ThreadLocal<ServletRequest>();
    private static ThreadLocal<ServletResponse> currentResponse = new ThreadLocal<ServletResponse>();

    public Logger logger = LoggerFactory.getLogger(this.getClass());

    /**
     * 线程安全初始化reque，respose对象
     *
     * @param request
     * @param response
     */
    @ModelAttribute
    public void initReqAndRep(HttpServletRequest request, HttpServletResponse response) {
        currentRequest.set(request);
        currentResponse.set(response);
    }

    /**
     * 线程安全
     *
     * @return
     */
    public HttpServletRequest request() {
        return (HttpServletRequest) currentRequest.get();
    }

    /**
     * 线程安全
     *
     * @return
     */
    public HttpServletResponse response() {
        return (HttpServletResponse) currentResponse.get();
    }

    /**
     * @param mv
     * @return
     */
    public ModelAndView modelAndView(ModelAndView mv) {
        if (!mv.hasView()) {
            mv.setView(new MappingJackson2JsonView());
        }
        return mv;

    }


    public String getParameter(String paramName) {
        return request().getParameter(paramName);
    }

    public void setAttribute(String key, Object value) {
        request().setAttribute(key, value);
    }


    public String getDateInfo(Object obj) {
        String dataInfo = "";
        Field[] fields = obj.getClass().getDeclaredFields();
        for (int j = 0; j < fields.length; j++) {
            fields[j].setAccessible(true);

            String name = fields[j].getName();
            String dataVal = "";

            if (fields[j].getType().getName().equals(String.class.getName())) {
                try {
                    dataVal = fields[j].get(obj).toString();
                    if ((dataVal == null) || (dataVal.equals("")))
                        continue;
                    dataInfo = dataInfo + "[" + name + "]-" + dataVal + ",";
                } catch (Exception localException) {
                }
            } else {
                if ((!fields[j].getType().getName().equals(Integer.class.getName()))
                        && (!fields[j].getType().getName().equals("int")))
                    continue;
                try {
                    dataVal = fields[j].getInt(obj) + "";
                    if ((dataVal != null) && (!dataVal.equals("")))
                        dataInfo = dataInfo + "[" + name + "] " + dataVal + ",";
                } catch (Exception localException1) {
                }
            }
        }
        return dataInfo;
    }

    /**
     * 获取物理路径
     *
     * @param path
     * @return 例如path=insurance，
     * D:\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\yunbnag\insurance
     * /usr/local/tomcat/apache-tomcat-7.0.82/webdb/ROOT/insurance
     */
    public String getRealPath(String path) {
        String rootPath = request().getSession().getServletContext().getRealPath(path);
        if (!(rootPath.endsWith("/") || rootPath.endsWith("\\"))) {
            rootPath += File.separator;
        }
        return rootPath + "/";
    }


    public void returnString(String data) {
        try {
            response().setContentType("text/html;charset=utf-8");
            response().setCharacterEncoding("utf-8");
            PrintWriter out = response().getWriter();
            response().setContentType("text/html");
            out.print(data);
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    public String getTime(int time) {
        TimeZone tz = TimeZone.getTimeZone("Asia/Shanghai");
        TimeZone.setDefault(tz);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String times = format.format(new Date(time * 1000L));
        return times;
    }


    /**
     * @param multipartFile
     * @param path
     * @return
     */
    public String transferTo(MultipartFile multipartFile, String path) {
        if (multipartFile == null || null == multipartFile.getOriginalFilename() || "".equals(multipartFile.getOriginalFilename())) {
            return null;
        }
        File file = new File(path);
        if (!file.exists()) {
            file.mkdirs();
        }
        try {
            file = new File(path + multipartFile.getOriginalFilename());
            if (file.exists()) {
                file.delete();
//				file.deleteOnExit();
            }
            multipartFile.transferTo(file);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return path + multipartFile.getOriginalFilename();
    }

    public Page<T> toPage(PageView pageView) {
        Page page =new Page();
        page.setCurrent(pageView.getPageNum());
        page.setSize(pageView.getPageSize());
        //page.setLimit((pageView.getPageNum() - 1) * pageView.getPageSize());
        return page;
    }
}

