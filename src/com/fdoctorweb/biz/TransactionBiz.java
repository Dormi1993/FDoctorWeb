package com.fdoctorweb.biz;

import com.fdoctorweb.entity.Account;
import com.fdoctorweb.entity.Pager;
import com.fdoctorweb.entity.TransactionLog;

import java.util.List;

/**
 * Created by dormi on 2017/1/21.
 */
public interface TransactionBiz {
    public boolean deposit(TransactionLog log);
    public boolean withdrawal(TransactionLog log);
    public boolean transfer(TransactionLog log);
    public boolean sendMessage(TransactionLog log);
    //获取交易记录
    public List getLogs(Account account, int page);
    //获得账户的交易记录总数，用来初始化分页类Pager对象，并设置perPageRows和rowCount属性
    public Pager getPagerOfLogs(Account account);
}
