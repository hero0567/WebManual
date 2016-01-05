<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8; IE=edge">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>用户登录 | 92说明书</title>
	<link rel="icon" href="/images/favicon.ico" />
	<link rel="shortcut icon" href="./img/favicon.png">
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png">
	<link rel="stylesheet" type="text/css" href="./css/signup.css">
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link href="css/pages/index.css" rel="stylesheet">
	<link href="css/fontawesome.css" rel="stylesheet">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
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
					<a class="tab on">登录</a> <a href="" class="tab" id="regist">注册新用户</a>
				</div>

				<div class="contset">
					<div class="cont on">
						<form action="" method="post" accept-charset="utf-8">
							<div class="row">
								<input type="text" name="identity" value="" id="create_account_email" placeholder="邮箱" check="mail">
								<input type="password" name="password" value="" id="create_account_password" placeholder="密码(6位以上数字或字母)" check="6">
							</div>

							<div class="row tip tipbottom">
								<label><input type="checkbox" name="remember" value="1" id="remember"> 记住我</label> 
								<a href="https://www.itjuzi.com/user/forgot_password" class="flr">忘记密码</a>
							</div>

							<div class="row">
								<br>
								<button type="submit" class="jzbtn c">登 录</button>
							</div>
						</form>
						<div class="row snslogin">
							<p class="tipline">
								<span>或使用社交账号登录</span>
							</p>
							<p>
								<a href="https://www.itjuzi.com/oauth/sns/login/weibo"><i class="fa fa-weibo"></i></a> 
								<a href="https://www.itjuzi.com/oauth/sns/login/qq"><i class="fa fa-qq"></i></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script src="js/lib/others/modernizr.js"></script>
</body>
</html>

