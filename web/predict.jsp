<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>predict</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="style/style.css" >
	<link rel="stylesheet" type="text/css" href="style/default.css" >
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript" >
	
	
	
	function disptime(){
	var now=new Date();
	
	var year=now.getFullYear();
	var month=now.getMonth()+1;
	var date=now.getDate();
	var hour=now.getHours();
	var minute=now.getMinutes();
	var second =now.getSeconds();
		document.getElementById("datetime").value=year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second;
		//year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second;
		setTimeout("disptime()", 1000);
	}
	
	function pre(){
	    return confirm("确认预测吗？");
	}
	
	
</script>
  </head>
  	
  <body onload="disptime()">
	<form  method="post" name="myform" action="/FDoctorWeb/info/predict" onsubmit="return pre()">
		<div align="center">
		<table width="400" border="0" class="table">
			<tbody>
				<tr>
				<td width="100">&nbsp;当前时间：</td>
				<td><input type="text" name="log.datetime" id="datetime"></td>
				</tr>
				<tr>
					<td width="100">&nbsp;温馨提示：</td>
					<td width="100">&nbsp;&nbsp;本预测结果仅做参考</td>
				</tr>
				<tr>
				<td>&nbsp;</td>
				<td>&nbsp;<input type="Submit" value="预测" /> </td>
				</tr>
			</tbody>
		</table>
			<div style="color:red;"> 
	        <s:fielderror /> 
	    	</div> 
		</div> 
	</form>
  </body>
</html>
