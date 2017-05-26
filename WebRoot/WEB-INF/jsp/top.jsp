<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link rel="stylesheet" href="${pageContext.request.contextPath }/style/iconfont.css" type="text/css"></link>
 </head>
   
  		<style type="text/css">
 
 		#login{
 			display:none;
 		
 		}
  	 
  		</style>
  	
 
  
  <body>
  

           <div id="banner">
                <div id="banner_top"> 
                    <img id="banner_top_logo" src="images/logo.jpg" alt="头像" title="头像"></img>
                 	<div id="login"  >
            		<c:if test="${user != null }">
            		<a href="${pageContext.request.contextPath}/exit.action">退出</a>
            		</c:if>
            		<c:if test="${user eq null }">
            		<a href="${pageContext.request.contextPath}/toLogin.action">登陆</a>
            		</c:if>
            		</div>
              	</div>
                <div id="banner_center_nickname">你好啊</div>
                <div id="banner_center_motto">我很好</div>
           </div>

           <div id="main">
             <div id="main_top">
                <div id="uls">
                    <div class="liss"><a href="${pageContext.request.contextPath}/index.action">Blog</a></div>
                     <c:if test="${user eq null }">
                    <div class="liss"><a href="#">About</a></div>
                     </c:if>
                   
                    <div class="liss"><a href="#">GitHub</a></div>
                   
                    <c:if test="${user != null}">
                     <div class="liss"><a href="${pageContext.request.contextPath}/toWrite.action">Write</a></div>
                    </c:if>
           
                </div>
             </div>
            </div>
  
  </body>
  <script type="text/javascript">
  
 
	 function  fs(){
	  		var logo = document.getElementById("banner");	
	  		var login = document.getElementById("login");
	  		 var tops = document.getElementById("banner");
	  		logo.onmouseover=function(){
	  		 	login.style.display ="block";	
	  		};
	  		  tops.onmouseout = function(){
	  		 	  login.style.display ="none";
	  		 };
	  	
	  		
	  	};
	  	
	  	fs();
  </script>
  
</html>
