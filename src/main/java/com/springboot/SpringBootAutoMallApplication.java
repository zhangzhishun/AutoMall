package com.springboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;

import java.util.Locale;

/**
 * 扫描mapper 启动类
 * */
@MapperScan("com.springboot.dao")
@SpringBootApplication
public class SpringBootAutoMallApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootAutoMallApplication.class, args);
	}

	@Bean
	public ViewResolver myViewReolver(){
		return new MyViewResolver();
	}

	public static class MyViewResolver implements ViewResolver{
		@Override
		public View resolveViewName(String viewName, Locale locale) throws Exception {
			return null;
		}
	}

}
