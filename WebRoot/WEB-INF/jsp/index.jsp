<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
 <title>The Index Of My Blog</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/reset.css" type="text/css"></link>
    <linK rel="stylesheet" href="${pageContext.request.contextPath}/style/style.css" type="text/css"></link>
    <script type="text/javascript">
    
	function submit(bid){
		var form = document.getElementById(bid);
		
		form.submit();
	}
	
	function submitDelete(bid){
	//alert("确定要删除？");
		var form = document.getElementById(bid);
		form.action='${pageContext.request.contextPath}/deleteBlog.action';
		form.submit();
	}
    </script>

</head>
<body>
     <div id="container">
     
       <div id="top"></div>
        
           <%@include file="top.jsp" %>
         <div id="main_main">
           
           
             <div id="main_list">
             <c:forEach items="${list }" var="blog">
                 <div class="title_list">
                 	 <form id="${blog.bid }" action="${pageContext.request.contextPath}/single.action" method="post">
                 	 <input type="hidden" name="bid" value="${blog.bid }"/>
                     <div class="main_list_left"><a  href="javascript:submit(${ blog.bid})"  >${blog.title }</a></div>
                     </form>
                     <div class="main_list_right"><fmt:formatDate value="${blog.create_time }" type="date" pattern="dd/MM/yy"></fmt:formatDate>
                     	<c:if test="${user!=null }">
                     	<a    href="javascript:submitDelete(${blog.bid})"><i class="iconfont">&#xe687;</i></a>
                     	</c:if>
                     
                     </div>
                 </div>
             </c:forEach>
             </div>
       </div>
         <%@include file="buttom.jsp" %>
     </div>

</body>

</html>