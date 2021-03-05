package com.evan.aiu.config;

import com.evan.aiu.interceptor.LoginInterceptor;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@SpringBootConfiguration
public class MyWebConfigurer implements WebMvcConfigurer {
    @Bean
    public LoginInterceptor getLoginInterceptor(){
        return new LoginInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //对所有的路径应用拦截器，除了index.html
        registry.addInterceptor(getLoginInterceptor()).addPathPatterns("/**").excludePathPatterns("/index.html");
    }
}
