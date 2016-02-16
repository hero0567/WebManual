<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8; IE=edge">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>用户登录 | 乐道说明书</title>
	<link rel="icon" href="/images/favicon.ico" />
	<link rel="shortcut icon" href="./img/favicon.png">
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png">
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="stylesheet" type="text/css" href="css/common/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="css/common/site.css" />
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
	<script src="js/lib/others/modernizr.js"></script>
	<!-- Placed at the end of the document so the pages load faster -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
    <script src="js/lib/angular/angular.js"></script>
    <script src="js/lib/angular/angular-cookies.min.js"></script>
    <script src="js/app.js"></script>
	<script src="js/controllers/SigninController.js"></script>	  

</head>
<body ng-cloak ng-app="app" ng-controller="SigninController" class="">
	<div class="d-n">
		<img src="./img/favicon.png">
	</div>
	<!--[if lt IE 10]>
      	<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]--><!-- Header -->
	<%@ include file="../common/header.jsp" %>

	<div class="main boxed">
		<div class="loginbox-thin">
			<div>
				<div class="row tip tiptop">
					<a class="tab on" href="/signin">登录</a> <a href="/signup" class="tab" id="regist">注册新用户</a>
				</div>

				<div class="content">
					<div class="on">
						<form id="form-signin" name="myForm" ng-submit="signin()">
			                <div>
			                    <div class="span12 alert alert-error" ng-show="error">
			                        <strong ng-bind="errorMessage"></strong>
			                    </div>
			                </div>
			                
			                <div class="row">
								<div class="control-group text-center">
									<input type="email" ng-model="user.username"
										placeholder="请输入注册邮箱地址 " class="pull-left personalEmail" required> <span
										class="add-on margin-left-40"><i class="icon-envelope"></i></span>
								</div>
							</div>
			                
			                <div class="row">
				                <div class="control-group text-center clearfix">
				                    <input name="userPassword" type="password" ng-model="user.password" required
				                        ng-minlength="6" ng-maxlength="16" placeholder="请输入密码"
				                        class="pull-left" id="login-pass"><span
				                        class="add-on margin-left-40"><i class="icon-lock"></i></span>
				                    <div ng-show="myForm.userPassword.$dirty && !myForm.userPassword.$valid"
				                        class="span12 alert alert-error text-left" ng-bind="'必填字段，请输入长度在6-16位的密码！'"></div>
				                </div>
							</div>
							
							<div class="row">
				                <div class="control-group text-center clearfix">
				                	<input type="text" name="securityCode" id="input-securityCode" ng-blur="checkSecCode()"
				                        ng-model="user.captcha" placeholder="请输入右侧验证码" ng-minlength="4" ng-maxlength="4" required/>
				                    <img ng-src="{{imageUrl}}" ng-click="changeCaptcha()" class="captcha" />
				                    <div ng-show="error.captcha"
										class="span12 alert alert-error text-left" ng-bind="'验证码错误，请重新输入！'"></div>
									<div ng-show="error.loginfailed"
										class="span12 alert alert-error text-left" ng-bind="'登录失败，请重新登录！'"></div>
				                </div>
			                </div>
			
			                <div class="row tip tipbottom">
								<label><input name="remember-me" ng-model="user.rememberMe" type="checkbox" value="false"> 记住我</label> 
								<a href=" " class="flr">忘记密码</a>
							</div>
			
							<div class="row">
								<button type="submit" class="wmanualbtn" ng-disabled="myForm.$invalid">登 录</button>
							</div>
			                 
		                </form> 
						<div class="row snslogin">
							<p class="tipline">
								<span>或使用社交账号登录</span>
							</p>
							<p>
								<a href="https://www.92shuomingshu.com/oauth/sns/login/weibo"><i class="fa fa-weibo"></i></a> 
								<a href="https://www.92shuomingshu.com/oauth/sns/login/qq"><i class="fa fa-qq"></i></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

