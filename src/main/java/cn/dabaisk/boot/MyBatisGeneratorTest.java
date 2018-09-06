//package cn.dabaisk.boot;
//
//import org.mybatis.generator.api.MyBatisGenerator;
//import org.mybatis.generator.config.Configuration;
//import org.mybatis.generator.config.xml.ConfigurationParser;
//import org.mybatis.generator.internal.DefaultShellCallback;
//
//import java.io.File;
//import java.util.ArrayList;
//import java.util.List;
//
//public class MyBatisGeneratorTest {
//
//    public static void main(String[] args) {
//
//        List<String> warnings = new ArrayList<String>();
//        boolean overwrite = true;
//
//        File configFile = new File( MyBatisGeneratorTest.class.getClassLoader().getResource("generatorConfig.xml").getPath());
//        System.out.println(configFile.getPath());
//        ConfigurationParser cp = new ConfigurationParser(warnings);
//        try {
//            Configuration config = cp.parseConfiguration(configFile);
//            DefaultShellCallback callback = new DefaultShellCallback(overwrite);
//            MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
//            myBatisGenerator.generate(null);
//        }catch(Exception e){
//
//        }
//    }
//}
