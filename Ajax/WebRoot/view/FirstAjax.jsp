<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'FirstAjax.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="js/jquery-1.8.3.js"></script>
	<script>
		$(function(){
		$("#username").blur(function(){
			$("#check").css("color","red").html("正在努力加载中。。。。。");
			//获取要验证的值：
			var name=$(this).val();
			//利用ajax发送请求：
			var xhr;
			//判断并处理浏览器兼容
			if(windor.XMLHttpRequest){
				//构建对象：
				xhr=new XMLHttpRequest();
			}else{
				//IE6.7
				xhr=new ActiveXObject("Msxml2.XMLHTTP");
			}
			//打开连接：
			xhr.open("POST","${pageContext.request.contextPath}/UserServlet",true);
		});
				$("#txtName").blur(function(){
			$("#validateMsg").css("color","black").html("<img src='${pageContext.request.contextPath}/images/l2.gif' />正在努力加载中.....");
			//获得要验证的值
			var txt=$(this).val();
			//利用AJAX发送请求
			var xhr;
			/*if(window.XMLHttpRequest){
				//1.构建对象
				xhr=new XMLHttpRequest();
			}else{
				//IE6,7
				xhr=new ActiveXObject("Msxml2.XMLHTTP");
			}
			//2.打开连接
			//isAsy:true 异步 fasle 同步
			xhr.open("POST","${pageContext.request.contextPath}/validate.action",true);
			//设置请求头
			xhr.setRequestHeader("content-type","application/x-www-form-urlencoded;");
			//3.发送请求
			xhr.send("userName="+txt+"&r="+Math.random());
			//4.处理(异步请求)响应
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4&&xhr.status==200){
					var rs=$.trim(xhr.responseText);
					if("yes"==rs){
						$("#validateMsg").css("color","green").html("亲，用户名可以使用");
					}else if("no"==rs){
						$("#validateMsg").css("color","red").html("亲，用户名已占用");
					}
				}
			};*/
			
		});
		});
	</script>
  </head>
  
  <body>
   <form>
   	用户名：<input type="text" id="username"/><br/><span id="check"></span><br/>
   	密&nbsp;&nbsp;码：<input type="password" id="pass"/><br/><br/>
   	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="登陆"/>
   </form>
  </body>
</html>
