<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>口罩预约系统-FZU软件工程九头蛇小组</title>
<link type="text/css" rel="stylesheet" media="all" href="css/styles.css" />
</head>
<script>

</script>
<body>
<%
	if(request.getAttribute("book") == null){
		request.setAttribute("book", 0);//未预定
	}else if((int)request.getAttribute("book") == 1){
%>
	<script>
		alert("预约成功");
	</script>
<% 
	}else if(((int)request.getAttribute("book") == 2)){
%>
<script>
	alert("您的身份证或电话号码已参与本轮预约或您已经成功中选三次不能在预约");
</script>
<% 
	}
	request.setAttribute("book", 0);
%>
	<div class="wrapper">
		<div class="container">
			<ul class="menu" rel="sam1">
				<li class="active"><a href="index.jsp">主 页</a></li>
				<li><a href="book.jsp">预 约 口 罩</a></li>
				<li><a href="query.jsp">查 询 预 约</a></li>
				<li><a href="adminLogin.jsp">用 户 </a></li>
			</ul>
		</div>
		<p class="title" align="center">口罩预约系统</p>
	</div>
	<div style="text-align: center;">
		<form action="AppointServlet?flag=book">
			<p style="font-size: 22px; margin: 16% 0% 2%; color: LightSlateGray"
				align="center">
				真实姓名&nbsp;&nbsp; <input type="text" name="name">
			</p>
			<p style="font-size: 22px; margin: 2% 0%; color: LightSlateGray"
				align="center">
				身份证号&nbsp;&nbsp; <input type="text" name="IdNumber">
			</p>
			<p style="font-size: 22px; margin: 2% 0%; color: LightSlateGray"
				align="center">
				手机号码&nbsp;&nbsp; <input type="text" name="phoneNumber">
			</p>
			<p style="font-size: 22px; margin: 2% 0%; color: LightSlateGray"
				align="center">
				预约数量&nbsp;&nbsp; <select name="quantity" style="width: 145px">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>

			</p>
			<input
				style="font-size: 16px; margin: 0px auto 2%; width: 260px; text-align: center;"
				type="submit" value="提 交" id="subButton"> <br />
		</form>
		<form action="">
			 <input
				style="font-size: 14px; margin: 0px auto 2%; width: 80px; text-align: center;"
				type="submit" value="开始预约" id="beginButton" onclick="begin()">
				<input style="font-size: 14px; margin: 0px auto 2%; width: 80px; text-align: center;"
				type="submit" value="结束预约" id="endButton" onclick="end()">
				<input style="font-size: 14px; margin: 0px auto 16%; width: 95px; text-align: center;"
				type="submit" value="设置口罩总量">
		</form>
	</div>





	<div style="text-align: center; clear: both">
		<br>
		<p></p>

	</div>

	<footer style="margin-top: 0%; border: 0px;">

		<p style="font-size: 15px; margin: 0%; color: LightSlateGray"
			align="center">
			Github: <a href="https://github.com/HailHydra2">https://github.com/HailHydra2</a>.
		</p>
		<p style="font-size: 15px; margin-top: 0%; color: LightSlateGray"
			align="center">Powered by 九头蛇小组 | All Copyright.</p>

	</footer>
</body>
</html>