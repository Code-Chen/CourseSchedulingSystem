package com.xnxy.CourseSchedulingSystem;

import org.apache.catalina.filters.CorsFilter;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

@CrossOrigin
@SpringBootApplication
@MapperScan("com.xnxy.CourseSchedulingSystem.Dao")
@EnableTransactionManagement
public class CourseSchedulingSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(CourseSchedulingSystemApplication.class, args);
	}
}
