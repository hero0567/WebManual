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
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="stylesheet" type="text/css" href="css/common/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="css/common/common.css" />
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	  <![endif]-->

</head>
<body  ng-app="" ng-controller="SigninController">
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
						<form name="myForm" ng-submit="signin()">
			                <div>
			                    <div class="span12 alert alert-error" ng-show="error">
			                        <strong>{{errorMessage}}</strong>
			                    </div>
			                </div>
			                
			                <div class="row">
			                	<div class="control-group text-center">
				                    <input name="userName" type="text" ng-model="user.username"
				                        ng-minlength="2" ng-maxlength="16" placeholder="请输入用户名 "
				                        class="pull-left"><span class="add-on margin-left-40"><i
				                        class="icon-user"></i></span>
				                    <div ng-show="myForm.userName.$dirty && !myForm.userName.$valid"
				                        class="span12 alert alert-error text-left">必填字段，输入长度请保持在2-16位！</div>
				                </div>
			                </div>
			                
			                <div class="row">
				                <div class="control-group text-center clearfix">
				                    <input name="userPassword" type="password" ng-model="user.password"
				                        ng-minlength="5" ng-maxlength="16" placeholder="请输入密码"
				                        class="pull-left" id="login-pass"><span
				                        class="add-on margin-left-40"><i class="icon-lock"></i></span>
				                    <div ng-show="myForm.userPassword.$dirty && !myForm.userPassword.$valid"
				                        class="span12 alert alert-error text-left">必填字段，请输入长度在5-16位的密码！</div>
				                </div>
							</div>
							
							<div class="row">
				                <div class="control-group text-center clearfix">
				                	<input type="text" name="securityCode" id="input-securityCode"
				                        ng-model="user.captcha" ng-minlength="5" ng-maxlength="5"
				                        placeholder="请输入右侧验证码" />
				                    <img ng-src="{{imageUrl}}" ng-click="changeCaptcha()" style="float:right;width:100px; height:30px; margin-top:-30px; position:relative" /> 
				                    <div ng-show="myForm.securityCode.$dirty && !myForm.securityCode.$valid"
				                        class="span12 alert alert-error text-left">请输入正确长度的验证码！</div>
				                </div>
			                </div>
			
			                <div class="row tip tipbottom">
								<label><input ng-model="user.rememberMe" type="checkbox" value="false"> 记住我</label> 
								<a href="https://www.itjuzi.com/user/forgot_password" class="flr">忘记密码</a>
							</div>
			
							<div class="row">
								<button type="submit" class="jzbtn c" ng-click="signin()" ng-disabled="myForm.$invalid">登 录</button>
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
	<!-- Placed at the end of the document so the pages load faster -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
    <script src="js/lib/angular/angular.js"></script>
	<script src="js/controllers/SigninController.js"></script>
</body>
</html>

