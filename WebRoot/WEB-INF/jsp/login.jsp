<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录</title>

<link rel="Stylesheet" type="text/css" href="style/iconfont.css" />
<style>
 	#login{
 		width:400px;
 		height:400px;
 		border:solid 1px red;
 		margin:180px auto;
 	}
 	
 	#login_top{
 		width:300px;
 		height:90px;
 		margin:20px auto 0;
 		text-align:center;
 		line-height:90px;
		font-size:20px;
		font-family:"幼圆","微软雅黑";
		color:blue;
		font-weight:bold;
 	}
 	 	#login_center{
 		width:380px;
 		height:200px;
 		margin:2px auto;
 		text-align:center;
 		line-height:90px;
		font-size:20px;
		font-family:"幼圆","微软雅黑";
		color:blue;
 	}
 	 	 	#login_buttom{
 		width:300px;
 		height: 75px;
 		margin:5px auto;
 		text-align:center;
 		line-height:90px;
		font-size:20px;
		font-family:"幼圆","微软雅黑";
		color:blue;
 	}
 	
 	#login_buttom div{ 
 		width:140px;
 		height:62px;
 		float:left;
 		margin:4px; 
 		 
 	}
 	
 	#login_button_i {
 		width:75px;
 		height:35px;
 		border-radius:10px;
 		background: #333366;
 		margin:5px;
 	}
 	
 	#login_center div{
 		height:45px;
 	
 	}
 	 	#login_center div input{
 	 	font-size:13px;
 		height:25px;
 		width:188px;
 		
 	
 	}
 	.in{
 		font-size:25px;
 		
 	}
</style>
</head>
<body><%--

   
	<form id="loginForm" method="post" action="${pageContext.request.contextPath }/login.action">
    	${message }
            登录<a href="index.jsp" title="关闭窗口"  class="close_btn" id="closeBtn">×</a>
  
            用户名: <span class="inputBox">
                <input type="text" id="txtName" name="username" placeholder="账号/邮箱" />
            </span><a href="javascript:void(0)" title="提示" class="warning" id="warn">*</a>
     
            密&nbsp;&nbsp;&nbsp;&nbsp;码: <span class="inputBox">
                <input type="password" id="txtPwd" name="password" placeholder="密码" />
 
           验证码:  
                <input type="text" id="txtName" name="verifyCode" placeholder="验证码" />
            
            	<img id="verifyCode" onclick="changeCode()"   style="height: 50px;width: 100px" src="${pageContext.request.contextPath }/verifyCode.action" alt="点击刷新" />
   
            <input  type="submit" id="loginbtn" value="登录" />
	</form>
 
--%>

	<div id="login">
	<form id="loginForm" method="post" action="${pageContext.request.contextPath }/login.action">
			<div id="login_top">欢迎登陆</div>
			${message }
			<div id="login_center">
				<div><i class="iconfont in">&#xe663;</i>&nbsp;<input type="text" name="username" placeholder="帐户"/></div>		
				<div><i class="iconfont in">&#xe78d;</i>&nbsp;<input type="password" name="password" placeholder="密码"/></div>		
				<div><i class="iconfont">&#xe601;</i>&nbsp;<input style="width:50px;" type="text" name="verifyCode" placeholder="验证码"/>
				
            	<a><img id="verifyCode" onclick="changeCode()"   style="height: 32px;width: 100px; " src="${pageContext.request.contextPath }/verifyCode.action" alt="点击刷新" /></a>
				
				</div>		
			
			</div>
			<div id="login_buttom">
				<div><input id="login_button_i" type="button" onclick="${pageContext.request.contextPath}/index.action"  value="取消"/></div>
				<div><input id="login_button_i" type="submit"  value="登陆"/></div>
			</div>
			</form>
	</div>
 
</body>
<script type="text/javascript">
 
function changeCode(){
	
	var verifyCode = document.getElementById("verifyCode");
	verifyCode.src="${pageContext.request.contextPath }/verifyCode.action?time="+new Date().getMilliseconds();
}
</script>
</html>
