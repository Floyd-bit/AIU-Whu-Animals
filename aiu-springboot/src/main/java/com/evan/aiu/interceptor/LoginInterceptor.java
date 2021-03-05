package com.evan.aiu.interceptor;

import com.evan.aiu.pojo.User;
import org.apache.commons.lang.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//springboot中可直接实现HandlerInterceptor接口
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        HttpSession session = httpServletRequest.getSession();
        String contextPath = session.getServletContext().getContextPath();
        //拦截index路径
        String[] requireAuthPages = new String[]{
                "index",
        };
        String uri = httpServletRequest.getRequestURI();
        uri = StringUtils.remove(uri,contextPath+"/");
        String page = uri;
        //如果session没有记录，则重定向到登录界面
        if(begingWith(page,requireAuthPages)){
            User user = (User) session.getAttribute("user");
            if(user==null){
                httpServletResponse.sendRedirect("login");
                return false;
            }
        }
        return true;
    }
    //路径列表，记录需要拦截的路径
    private boolean begingWith(String page,String[] requiredAuthPages){
        boolean result = false;
        for(String requiredAuthPage : requiredAuthPages){
            if(StringUtils.startsWith(page, requiredAuthPage)) {
                result = true;
                break;
            }
        }
        return result;
    }
}
