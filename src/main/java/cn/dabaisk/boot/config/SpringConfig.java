package cn.dabaisk.boot.config;


import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.support.http.WebStatFilter;
import com.alibaba.druid.support.spring.stat.DruidStatInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.aop.support.DefaultPointcutAdvisor;
import org.springframework.aop.support.JdkRegexpMethodPointcut;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * @author zzc
 * @date 2018/8/19 20:27
 */
@Configuration
@MapperScan("cn.dabaisk.boot.mapper")
public class SpringConfig{
    /**
     * 相当于顶部的：
     * {@code @MapperScan("com.baomidou.springboot.mapper*")}
     * 这里可以扩展，比如使用配置文件来配置扫描Mapper的路径
     */
//     @Bean
//     public MapperScannerConfigurer mapperScannerConfigurer() {
//     MapperScannerConfigurer scannerConfigurer = new MapperScannerConfigurer();
//     scannerConfigurer.setBasePackage("cn.dabaisk.boot.mapper");
//     return scannerConfigurer;
//     }

    @Bean(destroyMethod = "close", initMethod = "init",name = "dataSource")
    @ConfigurationProperties("spring.datasource")
    public DataSource druidDataSource(@Value(value="${spring.datasource.filters}")String filters){
        System.out.println("=============Spring注入druidDataSource==================");
        DruidDataSource dataSource = new DruidDataSource();
        try {
            dataSource.setFilters(filters);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return dataSource;
    }

    /**
     * mybatis-plus分页插件<br>
     * 文档：http://mp.baomidou.com<br>
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        PaginationInterceptor paginationInterceptor = new PaginationInterceptor();
        return paginationInterceptor;
    }
    /**
     * druid spring监控
     */
    @Bean
    public DruidStatInterceptor druidStatInterceptor() {
        DruidStatInterceptor dsInterceptor = new DruidStatInterceptor();
        return dsInterceptor;
    }
    @Bean
    @Scope("prototype")
    public JdkRegexpMethodPointcut jdkRegexpMethodPointcut() {
        JdkRegexpMethodPointcut pointcut = new JdkRegexpMethodPointcut();
        pointcut.setPattern("cn.dabaisk.boot.*.*");
        return pointcut;
    }

    @Bean
    public DefaultPointcutAdvisor defaultPointcutAdvisor(DruidStatInterceptor druidStatInterceptor, JdkRegexpMethodPointcut jdkRegexpMethodPointcut) {
        DefaultPointcutAdvisor defaultPointAdvisor = new DefaultPointcutAdvisor();
        defaultPointAdvisor.setPointcut(jdkRegexpMethodPointcut);
        defaultPointAdvisor.setAdvice(druidStatInterceptor);
        return defaultPointAdvisor;
    }

//    @Bean
//    public ServletRegistrationBean druidStatViewServlet() {
//        ServletRegistrationBean registrationBean = new ServletRegistrationBean(new StatViewServlet(), "/druid/*");
//        registrationBean.addInitParameter("allow", "");
//        registrationBean.addInitParameter("deny", "192.168.0.103");
//        registrationBean.addInitParameter("loginUsername", "admin");
//        registrationBean.addInitParameter("loginPassword", "123456");
//        registrationBean.addInitParameter("resetEnable", "false");
//        return registrationBean;
//    }

    /**
     * druid
     */
    @Bean
    public FilterRegistrationBean druidWebStatViewFilter() {
        FilterRegistrationBean registrationBean = new FilterRegistrationBean(new WebStatFilter());
        registrationBean.addInitParameter("urlPatterns", "/*");
        registrationBean.addInitParameter("exclusions", "*.js,*.gif,*.jpg,*.bmp,*.png,*.css,*.ico,/druid/*");
        return registrationBean;
    }

}