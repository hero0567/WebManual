<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" juzi js flexbox no-touch opacity csstransforms3d svg"
	lang="">
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

<link rel="stylesheet" type="text/css"
	href="css/common/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/common/common.css" />
<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body ng-app="" ng-controller="SignupController">
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
					<a class="tab" href="/signin">登录</a> <a href="/signup" class="tab on" id="regist">注册新用户</a>
				</div>

				<div class="contset">
					<div class="cont on">
						<form name="myForm" ng-submit="signup()">
							<div class="row">
								<div class="control-group text-center">
									<input name="personalEmail" type="email" ng-model="user.username" ng-blur="checkEmailExist()" required
										placeholder="请输入注册邮箱地址 " class="pull-left personalEmail" required> <span
										class="add-on margin-left-40"><i class="icon-envelope"></i></span>
									<div ng-show="myForm.personalEmail.$dirty && !myForm.personalEmail.$valid"
										class="span12 alert alert-error text-left">必填字段，请输入正确的邮件格式！</div>
									<div ng-show="error.userexisted"
										class="span12 alert alert-error text-left">用户名已经存在，请输入另外一个用户名！</div>
									<div ng-show="!error.register"
										class="span12 alert alert-error text-left">注册失败，请重新注册！</div>

								</div>
							</div>
							<div class="row">
								<div class="control-group text-center clearfix">
									<input name="userPassword" type="password"
										ng-model="user.password" ng-minlength="6" ng-maxlength="16" required 
										placeholder="请输入密码" class="pull-left"><span
										class="add-on margin-left-40"><i class="icon-lock"></i></span>
									<div
										ng-show="myForm.userPassword.$dirty && !myForm.userPassword.$valid"
										class="span12 alert alert-error text-left">必填字段，请输入长度在6-16位的密码！</div>
								</div>
							</div>

							<div class="row">
								<div class="control-group text-center clearfix">
									<input name="confirmUserPassword" type="password" required 
										ng-model="user.confirmUserPassword" ng-minlength="6" ng-maxlength="16" placeholder="请再次输入密码"
										class="pull-left"><span class="add-on margin-left-40"><i
										class="icon-lock"></i></span>
									<div
										ng-show="myForm.confirmUserPassword.$dirty && user.confirmUserPassword != user.password"
										class="span12 alert alert-error text-left">密码确认不对，请再次输入！</div>
								</div>
							</div>
							
							<div class="row">
				                <div class="control-group text-center clearfix">
				                	<input type="text" name="securityCode" id="input-securityCode" ng-blur="checkSecCode()"
				                        ng-model="user.captcha" placeholder="请输入右侧验证码" ng-minlength="4" ng-maxlength="4" required />
				                    <img ng-src="{{imageUrl}}" ng-click="changeCaptcha()" class="captcha" />
				                    <div ng-show="error.captcha"
										class="span12 alert alert-error text-left">验证码错误，请重新输入！</div>
				                </div>
			                </div>

							<div class="control-group">
								<p class="t-small c-gray usn">
									<label><input type="checkbox" checked=""> 我已阅读
									</label><a target="_blank" href="#">"92说明书用户使用协议"</a>
								</p>
							</div>
							<br>
							<div class="row">
								<button class="jzbtn c" type="submit" ng-disabled="myForm.$invalid || error.captcha || error.userexisted || user.confirmUserPassword != user.password">注册</button>
							</div>
						</form>
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
	<script src="js/controllers/SignupController.js"></script>
</body>
</html>
