package com.springboot.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * <h3>AutoMall</h3>
 * <p>使用WebMvcConfigurerAdapter可以来扩展SpringMVC的功能</p>
 * @author : Tenderness
 * @date : 2020-03-20 09:30
 **/
@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        //registry.addViewController("/index").setViewName("index");
    }

    /**
     * 注册拦截器
     * addPathPattern后跟拦截地址，excludePathPatterns后跟排除拦截地址
     * */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginHandlerInterceptor()).addPathPatterns("/**")
                .excludePathPatterns("/user/**","/admin/**","/index","/login").excludePathPatterns("/static/**");
    }
}
