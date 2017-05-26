<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
 
    
    <title>底部</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <link rel="stylesheet" href="${pageContext.request.contextPath }/style/iconfont.css" type="text/css"></link>
 </head>
   <style>
   			#count{
   				margin:0;
   				height:30px;
   				line-height:40px;
   				font-size:14px;
   			}
   			
   			#copyr {
   				margin:0;
   				height:20px;
   				margin:2px auto;
   				line-height:20px;
   				font-size:17px;
   				
   			}
   </style>
 <body>
   <div id="buttom">
   				<input type="hidden" id="num" value="${count }"/>
   				<div id="count">您是第 <span id="countNumber"></span> 位访客</div>
                 	<div id="copyr">Powered By LiQiang </div>	
  </div>
 </body>
 <script type="text/javascript">
 	
 	var numIcon  = [
 	                '<i class="iconfont">&#xe62c;</i>'
 	                ,'<i class="iconfont">&#xe62d;</i>'
 	                ,'<i class="iconfont">&#xe623;</i>'
 	                ,'<i class="iconfont">&#xe624;</i>'
 	                ,'<i class="iconfont">&#xe625;</i>'
 	                ,'<i class="iconfont">&#xe626;</i>'
 	                ,'<i class="iconfont">&#xe622;</i>'
 	                ,'<i class="iconfont">&#xe629;</i>'
 	                ,'<i class="iconfont">&#xe62f;</i>'
 	                ,'<i class="iconfont">&#xe631;</i>'
 	               ]; 
 	
 	window.onload = function(){
 		var num = document.getElementById("num").value;
 		var countNumber = document.getElementById("countNumber");
 		
 		var numArr = [];
 		for(var i=0; i <num.length; i ++){
			numArr.push(num.charAt(i));
 		} 
 		
 		for(var j=0;j<numArr.length;j++){
 			
 			countNumber.innerHTML+=numIcon[numArr[j]];
 		}
 		
 
 	}
 
 
 </script>
  
</html>
