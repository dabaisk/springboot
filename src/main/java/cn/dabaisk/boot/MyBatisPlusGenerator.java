package cn.dabaisk.boot;


import java.sql.SQLException;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

public class MyBatisPlusGenerator {

    public static void main(String[] args) throws SQLException {

        //1. 全局配置
        GlobalConfig config = new GlobalConfig();
        config.setActiveRecord(true) // 是否支持AR模式
                .setAuthor("Bean") // 作者
                //.setOutputDir("D:\\workspace_mp\\mp03\\src\\main\\java") // 生成路径
                .setOutputDir("D:\\workspace\\idea-01\\springboot\\src\\main\\\\java1") // 生成路径
                .setFileOverride(true)  // 文件覆盖
                .setIdType(IdType.AUTO) // 主键策略
                .setServiceName("%sService")  // 设置生成的service接口的名字的首字母是否为I
                // IEmployeeService
                .setBaseResultMap(true)//生成基本的resultMap
                .setBaseColumnList(true);//生成基本的SQL片段

        //2. 数据源配置
        DataSourceConfig  dsConfig  = new DataSourceConfig();
        dsConfig.setDbType(DbType.MYSQL)  // 设置数据库类型
                .setDriverName("com.mysql.jdbc.Driver")
                .setUrl("jdbc:mysql://127.0.0.1:3306/oams")
                .setUsername("root")
                .setPassword("KDJl8W@^KG8l");

        //3. 策略配置globalConfiguration中
        StrategyConfig stConfig = new StrategyConfig();
        stConfig.setCapitalMode(true) //全局大写命名
                .setEntityLombokModel(false)
                // 指定表名 字段名是否使用下划线
                .setNaming(NamingStrategy.underline_to_camel)
                .setColumnNaming(NamingStrategy.underline_to_camel)
                .setNaming(NamingStrategy.underline_to_camel) // 数据库表映射到实体的命名策略
                .entityTableFieldAnnotationEnable(false) // 是否加注解
                .setSuperControllerClass("cn.dabaisk.boot.base.BaseController")
                //.setTablePrefix("tbl_")
//                .setInclude("tableNames")  // 生成的表
        ;
        //4. 包名策略配置
        PackageConfig pkConfig = new PackageConfig();
        pkConfig.setParent("cn.dabaisk.boot")
                .setMapper("mapper")//dao
                .setService("service")//servcie
                .setController("controller")//controller
                .setEntity("model")
                .setXml("mapper.xml");//mapper.xml
        //5. 模板文件目录
        TemplateConfig tc=new TemplateConfig();
        tc.setEntity("/templates/entity.java");
        tc.setService("/templates/service.java");
        tc.setServiceImpl("/templates/serviceImpl.java");
        tc.setMapper("/templates/mapper.java");
        tc.setXml("/templates/mapper.xml");
        tc.setController("//templates/controller.java");
        //6. 整合配置
        AutoGenerator  ag = new AutoGenerator();
        ag.setGlobalConfig(config)
                .setDataSource(dsConfig)
                .setStrategy(stConfig)
                .setTemplate(tc)
                .setPackageInfo(pkConfig);
        //6. 执行
        ag.execute();
    }


}
