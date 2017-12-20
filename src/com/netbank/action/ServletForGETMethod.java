package com.netbank.action;

/**
 * Created by Administrator on 2017/3/31 0031.
 */

import com.netbank.biz.PersoninfoBiz;
import com.netbank.biz.UserBiz;
import com.netbank.entity.Account;
import com.netbank.entity.Personinfo;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Servlet implementation class ServletForGETMethod
 */
//@WebServlet("/fcj")
public class ServletForGETMethod extends ActionSupport implements
        ServletRequestAware, ServletResponseAware, RequestAware {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletForGETMethod() {
        super();
        // TODO Auto-generated constructor stub
    }

    Map<String,Object> request;
    @Override
    public void setRequest(Map<String, Object> map) {
        this.request = map;

    }

    //定义通过@Resource注解注入的属性personinfoBiz，可省略set方法
    @Resource private PersoninfoBiz personinfoBiz;
    private HttpServletRequest request11;
    private HttpServletResponse response11;

    public void setServletRequest(HttpServletRequest request) {
        this.request11=request;
    }

    public void setServletResponse(HttpServletResponse response) {
        this.response11=response;
    }

    @Override
    public String execute() throws Exception {

        //通过accountid获得personinfo
        Personinfo per = personinfoBiz.getPersoninfo(Integer.parseInt(request11.getParameter("name")));
        //更新个人信息对象中的属性
        per.setCrp(Double.valueOf(request11.getParameter("pwd")));
        //将个人信息更新到数据库中
        if (personinfoBiz.modifyPersoninfo(per)){
            request.put("message33", "修改成功！");
            System.out.println("requestfcjUsername=" + request11.getParameter("name") + ",requestPassword=" + request11.getParameter("pwd"));
            return "message";
        }
        request.put("message33", "修改失败！");
        return "message";
    }

}