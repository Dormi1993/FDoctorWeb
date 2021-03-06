package com.fdoctorweb.action;

import com.fdoctorweb.biz.PersoninfoBiz;
import com.fdoctorweb.entity.Personinfo;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import javax.annotation.Resource;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * Created by dormi on 2017/1/19.
 */
public class PersoninfoAction extends ActionSupport implements RequestAware, SessionAware {
    //定义通过@Resource注解注入的属性personinfoBiz，可省略set方法
    @Resource private PersoninfoBiz personinfoBiz;
    Map<String,Object> request;
    Map<String,Object> session;
    private Personinfo personinfo;



    public Personinfo getPersoninfo() {
        return personinfo;
    }

    public void setPersoninfo(Personinfo personinfo) {
        this.personinfo = personinfo;
    }

    /**
     * 修改个人信息页面校验
     *
     */
    public void validateModify(){
        if ("".equals(personinfo.getTelephone().trim())){
            personinfo.setTelephone("电话不详");
        }
        if (!(personinfo.getAge() > 18 && personinfo.getAge() < 100)){
            addFieldError("personinfo.age", "年龄不符");
        }
        if(!Pattern.compile("^\\d{17}(\\d|x)$").
                matcher(personinfo.getCardid().toString()).matches()){
            addFieldError("personinfo.cardId", "身份证格式不正确");
        }
        if(!"电话不详".equals(personinfo.getTelephone().trim())
                &&!Pattern.compile("^(?:1[358]\\d{9}|\\d{3,4}-\\d{8,9})$").matcher(personinfo.getTelephone()).matches()){
            addFieldError("personinfo.telephone", "电话格式不正确");
        }

    }

    /**
     * 修改个人信息
     * @return
     */
    public String modify(){
        //从Session中获取保存的个人信息对象
        Personinfo per = (Personinfo) session.get("personinfo");
        //使用modify.jsp页面表单参数更新个人信息对象中的属性
        per.setAddress(personinfo.getAddress());
        per.setAge(personinfo.getAge());
        per.setCardid(personinfo.getCardid());
        per.setRealname(personinfo.getRealname());
        per.setSex(personinfo.getSex());
        per.setTelephone(personinfo.getTelephone());
        per.setCrp(personinfo.getCrp());
        //将个人信息更新到数据库中
        if (personinfoBiz.modifyPersoninfo(per)){
            //更新成功后，将个人信息对象重新存入Session保存
            session.put("personinfo", per);
            request.put("message33", "修改成功！");
            return "message";
        }
        request.put("message33", "修改失败！");
        return "message";
    }

    /**
     *诊断病情
     * @return
     */
    public String diagnose(){
        //从Session中获取保存的个人信息对象
        Personinfo per = (Personinfo) session.get("personinfo");

        double crp = per.getCrp();

        if (crp <= 2.8){
            request.put("message33", "您的身体状况良好！请继续保持！");
            return "message";
        } else if (crp <= 7.14){
            request.put("message33", "您的CRP浓度轻微偏高，身体若有不适，请及时与医生联系！");
            return "message";
        } else {
            request.put("message33", "您的CRP浓度明显偏高，身体可能处于异常状态，请及时与医生联系！");
            return "message";
        }

    }

    /**
     *预测病情
     * @return
     */
    public String predict(){
        //从Session中获取保存的个人信息对象
        Personinfo per = (Personinfo) session.get("personinfo");

        double crp = per.getCrp();

        if (crp <= 2.8){
            request.put("message33", "您未来几天的身体状况良好！请继续保持！");
            return "message";
        } else if (crp <= 7.14){
            request.put("message33", "您未来几天的CRP浓度可能轻微偏高，身体若有不适，请及时与医生联系！");
            return "message";
        } else {
            request.put("message33", "您未来几天的CRP浓度明显偏高，身体可能处于异常状态，请及时与医生联系！");
            return "message";
        }

    }

    @Override
    public void setRequest(Map<String, Object> map) {
        this.request = map;

    }

    @Override
    public void setSession(Map<String, Object> map) {

        this.session = map;
    }
}
