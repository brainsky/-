<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/indexframe.css" rel="stylesheet">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<div class="container" id="userlogin">
		<from class="form-signin" onsubmit="return false">
		<div class="row">
			<div class="col-sm-4">
				<h2 class="from-signin-heading">请登录</h2>
				<div class="">
					<label id="inputEmailOrPhone" class="sr-only">邮箱地址、手机号码</label> <input
						id="inputEmailOrPhone" type="text" class="form-control"
						placeholder="邮箱地址或手机号码"></input>
				</div>
						<label id="inputPassword" class="sr-only">Password</label> <input
							id="inputPassword" typr="password" class="form-control"
							placeholder="密码"></input>
				<div class="checkbox">
					<label><input type="checkbox" value="remember">"
						请记住我 "</label>
				</div>
			<div class="row">
			<div class="col-sm-2">
				<button type="submit" class="btn btn-default">登录</button>
			</div>
			<div class="col-sm-2">
				<button type="button" class="btn btn-default">注册</button>
			</div>
		</div>
		</div>
		</from>
		
	</div>

	<script src="js/jquery-3.0.0.min.js""></script>
	<script src="js/bootstrap.min.js""></script>
</body>
</html>
