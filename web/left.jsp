<%@page contentType="text/html;charset=gb2312" import="java.sql.*,java.util.*"%>

<%--
if(session.getAttribute("user")!=null){
//--------------------------------------logged------------------------------------------------------------------
	
--%>
<html>
<head>
<title>����ҳ��</title>
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
            href="javascript:void(0);">�����˵�</A></TD></TR>
        <TR height=4>
          <TD></TD></TR></TABLE>
      <TABLE id=child0 cellSpacing=0 cellPadding=0 width=150 border=0>        
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/deposit.jsp" target=main>���</A></TD></TR>
        <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/withdrawal.jsp" target=main>ȡ��</A></TD></TR>
          <TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/transfer.jsp" target=main>ת��</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/transaction/list?pager.curPage=1" target=main>��ѯ���׼�¼</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/information.jsp" target=main>�鿴��Ϣ</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild href="/FDoctorWeb/Highcharts-6.0.4/examples/line-basic/index.jsp" target=main>�鿴ȫ��CRPŨ��</A></TD></TR><TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/menu_icon.gif" width=9></TD>
        <TD><A class=menuChild href="/FDoctorWeb/Highcharts-6.0.4/examples/line-labels/index.jsp" target=main>����CRPŨ������ͼ</A></TD></TR><TR height=20>
        <TD align=middle width=30><IMG height=9
                                       src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/modify.jsp" target=main>�޸ĸ�����Ϣ</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/changepwd.jsp" target=main>�޸�����</A></TD></TR><TR height=20>
          <TD align=middle width=30><IMG height=9 
            src="images/menu_icon.gif" width=9></TD>
          <TD><A class=menuChild href="/FDoctorWeb/user/user_logout" target=main>ע��</A></TD></TR>
      </TABLE>
    </TD>
    <TD width=1 bgColor=#d1e6f7></TD>
  </TR>    
</TABLE>
<%--
}
--%>