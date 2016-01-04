<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" juzi js flexbox no-touch opacity csstransforms3d svg" lang="">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>注册新用户 ｜ 92说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/common/common.css" />
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	
	<script src="js/others/modernizr.js"></script>
	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="none">
		<img src="./img/favicon.png">
	</div>
	<!--[if lt IE 10]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<div class="main boxed">
		<div class="loginbox-thin">
			<div>
				<div class="row tip tiptop">
					<a href="" class="tab">登录</a> <a class="tab on">注册新用户</a>
				</div>

				<div class="contset">
					<div class="cont on">
						<!-- 注册表单 -->
						<form action="" method="post" accept-charset="utf-8">
							<div class="row">
								<input type="text" name="email" check="mail" placeholder="常用邮箱">
								<input type="text" name="username" placeholder="用户名"> <input
									type="password" name="password" check="6"
									placeholder="密码(6位以上数字或字母)"> <input type="password"
									name="password_confirm" check="samePassword" placeholder="重复密码">
								<br> <br> <br> <br>
								<p class="t-small c-gray usn">
									<label><input type="checkbox" checked=""> 我已阅读
									</label><a target="_blank" href="https://www.itjuzi.com/aboutus/policy">"92说明书用户使用协议"</a>
								</p>
							</div>
							<div class="row">
								<button type="submit" class="jzbtn c">注 册</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
