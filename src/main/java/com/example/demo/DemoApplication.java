package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class DemoApplication {
    //王耀武修改
//启动器
    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);

    }

}
