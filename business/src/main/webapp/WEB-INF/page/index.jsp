<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/indexframe.css" rel="stylesheet">
	<script src="js/jquery-3.0.0.min.js""></script>
	<script src="js/bootstrap.min.js""></script>
	<script src="js/myajax.js"></script>    
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <div class="main_frame">
		<!-- 导航设置-->
		<nav class="navbar navbar-default navbar-static-top" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#mycollapse">
					<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="" class="navbar-brand">医疗系统</a>
			</div>

			<div class="collapse navbar-collapse" id="mycollapse">
				<ul class="nav navbar-nav navbar-right" id="nav_collapse">
					<li><a href="#"><span class="glyphicon glyphicon-home"></span>
							首页</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-cog"></span>
							系统</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							用户</a></li>
				</ul>
				<div class="search">
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</form>
				</div>
			</div>
		</nav>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div id="wrapper">
				<div id="sidebar-wrapper">
					<div id="idebar-wrapper">
						<div class="panel-group" id="accordion">
							<div class="panel-group" id="accordion">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h5 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne">药品目录</a>
										</h5>
									</div>
									<div id="collapseOne" class="panel-collapse collapse">
										<div class="panel-body">再次点击我</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h5 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo">采购单管理</a>
										</h5>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">再次点击我</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h5 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseThree">统计分析</a>
										</h5>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">再次点击我</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="main_content">	
					<h2><p class="text-center text-success">欢迎您访问</p></h2>
			</div>
			</div>
		</div>
		
  </body>
</html>
