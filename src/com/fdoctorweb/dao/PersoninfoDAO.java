package com.fdoctorweb.dao;

import com.fdoctorweb.entity.Personinfo;
import com.fdoctorweb.entity.Status;

import java.util.List;

/**
 * Created by dormi on 2017/1/19.
 */
public interface PersoninfoDAO {
    //修改个人信息
    public void modifyPersoninfo(Personinfo personinfo);
    //获取全部用户信息
    public List getAllPersoninfo();
    //根据账户状态获取用户信息
    public List searchPersoninfo(Status status);
    //根据条件查询个人信息
    public List searchPersoninfo(Personinfo personinfo);
    //添加个人信息
    public boolean add(Personinfo personinfo);
    //根据accountid获取personinfo
    public Personinfo getPersoninfo(int accountid);

}
