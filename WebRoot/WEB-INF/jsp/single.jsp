<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
  
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <title>My Blog</title> 
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/reset.css" type="text/css"></link>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/style.css" type="text/css"></link>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/style/iconfont.css" type="text/css"></link>
    
   <script type="text/javascript" charset="utf-8"
	src="ueditor/dialogs/internal.js"></script>
	<script src="ueditor/ueditor.parse.js"></script>
	<style type="text/css">
		#sxp{
		 	margin:25px 20px 15;
			padding:15px 20px;
			font-size:18px;
			font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
		}
		
		#ccc{
			margin:25px 20px 15;
			padding:15px 20px;
			font-size:18px;
			font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
			text-align:center;
		}
	 
	</style>
   <script>
	uParse('#single_content', {
		rootPath : 'ueditor/',
		chartContainerHeight : 500
	});
</script>
</head>
<body>
     <div id="container">
		 <div id="top"></div>
		<%@include file="top.jsp" %>
             <div id="main_list">
                    <div id="single_title">${blogList[1].title }</div>
               		
                    <div id="single_content">${blogList[1].content}</div>
                       	
                       	<div id="ccc">
                       	<i class="iconfont" style="font-size:22px;">&#xe688;</i>&nbsp;&nbsp;${blogList[1].author}&nbsp;&nbsp;
                       	<i class="iconfont"  style="font-size:22px;">&#xe676;</i>&nbsp;&nbsp;<fmt:formatDate value="${blogList[1].create_time }" type="date" pattern="yyyy-MM-dd"/> 
                       	<c:if test="${user != null }">
                    	 	 &nbsp;&nbsp;<a href="${pageContext.request.contextPath }/editBlog.action?bid=${blogList[1].bid}"><i class="iconfont"  style="font-size:22px;">&#xe630;</i></a>
                       	</c:if>
                       	</div>
                       	
                        <div id="sxp">
			             		<c:if test="${blogList[0] != null}">
			             		<a href="${pageContext.request.contextPath}/single.action?bid=${blogList[0].bid }">上一篇:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${blogList[0].title }</a><br/><br/> 
			             		</c:if>
			             		<c:if test="${blogList[2] != null}">
			             		<a href="${pageContext.request.contextPath}/single.action?bid=${blogList[2].bid }">下一篇:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${blogList[2].title }</a></br>
			             		</c:if>
			             </div>
             </div>
             
           </div>
			<%@include file="buttom.jsp" %>
     </div>

</body>
</html>