package com.eyetalk;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.eyetalk.mapper")
public class EyeTalkProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(EyeTalkProjectApplication.class, args);
	}

}
