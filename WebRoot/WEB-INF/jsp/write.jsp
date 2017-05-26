<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>新建博客</title>
 <link rel="stylesheet" href="ueditor/themes/iframe.css"/><%--
 <link rel="stylesheet" href="style/write.css"/>
--%><meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="ueditor/ueditor.all.min.js">
	
</script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="ueditor/lang/zh-cn/zh-cn.js"></script>
	
	<script type="text/javascript">
	function panduan(){
		var content = UE.getEditor("editor").getContent();
		if(content!=null&&content!=""){
			document.getElementById("form1").submit();
		}else{
			alert("您还没有输入内容哦！");
		}
	}

</script>
<style type="text/css">
#editor{
	width:860px;
	height:700px;
	margin:0 auto;
	border:solid 1px red;
}

.ip{
	clear:both;
	width:800px;
	height:30px;
	margin:10px auto;
}

h3{
	text-align:center;

}
</style>
	
</head>
	<form id="form1" action="${pageContext.request.contextPath }/addBlogs.action"  method="post">
	<div class="ip">
	Title：<input type="text" name="title"/><br>
	</div>

 
	<script id="editor" type="text/plain"  name="content" >
</script><br/><br/>

	<div class="ip">
	Label:<input type="text" name="label" />	<input type="button" onclick="panduan()" value="保存"/><br>
	</div>
	
	</form>

</body>


	<script type="text/javascript">
		//实例化编辑器
		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
		var ue = UE.getEditor('editor',	{
			
			initialFrameWidth: null,
			initialFrameHeight:600, //初始化高度 
			 autoHeightEnabled: true,
			    autoFloatEnabled: true});
	</script>
</html>
