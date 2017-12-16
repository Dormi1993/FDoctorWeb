<%@page contentType="text/html;charset=gb2312" import="java.sql.*,java.util.*"%>

<%--
if(session.getAttribute("user")!=null){
//--------------------------------------logged------------------------------------------------------------------
	
--%>
<html>
<head>
<title>管理页面</title>
<LINK href="css/admin.css" type="text/css" rel="stylesheet">
</head>
<BODY>
<TABLE height="100%" cellSpacing=0 cellPadding=0 width=170 background=images/menu_bg.jpg border=0>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width=150 border=0>        
        <TR height=22>
          <TD style="PADDING-LEFT: 30px" background=images/menu_bt.jpg><A 
            class=menuParent onclick=expand(1) 
            href="javascript:void(0);">操作菜单</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child0 cellSpacing=0 cellPadding=0 width=150 border=0>        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/deposit.jsp" target=main>存款</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/withdrawal.jsp" target=main>取款</A></TD></TR>
          <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/transfer.jsp" target=main>转账</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/transaction/list?pager.curPage=1" target=main>查询交易记录</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/information.jsp" target=main>查看信息</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild href="/FDoctorWeb/Highcharts-6.0.4/examples/line-basic/index.jsp" target=main>查看全家CRP浓度</A></TD></TR><TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild href="/FDoctorWeb/Highcharts-6.0.4/examples/line-labels/index.jsp" target=main>个人CRP浓度折线图</A></TD></TR><TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/modify.jsp" target=main>修改个人信息</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/changepwd.jsp" target=main>修改密码</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/user/user_logout" target=main>注销</A></TD></TR>
      </TABLE>
    </TD>
    <TD width=1 bgColor=#d1e6f7></TD>
  </TR>    
</TABLE>
<%--
}
--%>