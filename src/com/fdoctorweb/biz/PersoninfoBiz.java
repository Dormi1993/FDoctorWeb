package com.fdoctorweb.biz;

import com.fdoctorweb.entity.Personinfo;
import com.fdoctorweb.entity.Status;

import java.util.List;

/**
 * Created by dormi on 2017/1/19.
 */
public interface PersoninfoBiz {
    //修改个人信息
    public boolean modifyPersoninfo(Personinfo personinfo);
    //根据账户状态获取个人信息
    public List searchPersoninfo(Status status);
    //获取全部个人信息
    public List getAllPersoninfo();
    //根据条件查询个人信息
    public List searchPersoninfo(Personinfo personinfo);
    //添加个人信息
    public boolean add(Personinfo personinfo);
    //根据accountid获得个人信息
    public Personinfo getPersoninfo(int accountid);
}
