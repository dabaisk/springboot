package cn.dabaisk.boot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAutoConfiguration
public class application {
    public static void main(String[] args) {
        SpringApplication.run(application.class, args);
    }
}
