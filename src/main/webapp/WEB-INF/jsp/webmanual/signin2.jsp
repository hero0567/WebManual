<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ç»å½</title>
  <link rel="icon" href="/images/favicon.ico" />
  <link rel="stylesheet" type="text/css" href="./css/signup.css">
  <meta name="csrf-param" content="authenticity_token" />
  <meta name="csrf-token" content="F/4T5TLAfL1CuyCwaqDrE5iXQz/aTu/6MBVldrfd1Ijjk3oxld8jibDZC/XBoxZ07YNxZiA7ixzvGLUW6uMrZA==" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
 
</head>
<body>
<div id="signInPage">
	<div class="align-center ">
		<div class="pull-left signInLogo">
			<img src="../../img/frontend/pages/login/crossp.png">
		</div>
		<div class="signIn-form pull-left">
			<form name="myForm" ng-submit="signin()">
				<div class="row-fluid">
					<div class="span12 alert alert-error" ng-show="error">
						<strong>{{errorMessage}}</strong>
					</div>
				</div>
				<div class="control-group text-center">
					<input name="userName" type="text" ng-model="user.username"
						ng-minlength="2" ng-maxlength="16" placeholder="è¯·è¾å¥ç¨æ·å "
						class="pull-left"><span class="add-on margin-left-40"><i
						class="icon-user"></i></span>
					<div ng-show="myForm.userName.$dirty && !myForm.userName.$valid"
						class="span12 alert alert-error text-left">å¿å¡«å­æ®µï¼è¾å¥é¿åº¦è¯·ä¿æå¨2-16ä½ï¼</div>
				</div>

				<div class="control-group text-center clearfix">
					<input name="userPassword" type="password" ng-model="user.password"
						ng-minlength="5" ng-maxlength="16" placeholder="è¯·è¾å¥å¯ç "
						class="pull-left" id="login-pass"><span
						class="add-on margin-left-40"><i class="icon-lock"></i></span>
					<div
						ng-show="myForm.userPassword.$dirty && !myForm.userPassword.$valid"
						class="span12 alert alert-error text-left">å¿å¡«å­æ®µï¼è¯·è¾å¥é¿åº¦å¨5-16ä½çå¯ç ï¼</div>
				</div>

				<div id="securityCode" class="control-group">
					<img ng-src="{{imageUrl}}" ng-click="changeCaptcha()" /> <input
						type="text" name="securityCode" id="input-securityCode"
						ng-model="user.captcha" ng-minlength="5" ng-maxlength="5"
						placeholder="è¯·è¾å¥å·¦ä¾§éªè¯ç " />
					<div
						ng-show="myForm.securityCode.$dirty && !myForm.securityCode.$valid"
						class="span12 alert alert-error text-left">è¯·è¾å¥æ­£ç¡®é¿åº¦çéªè¯ç ï¼</div>
				</div>

				<div class="control-group">
					<label class="checkbox" id="autoSignIn"> <input
						ng-model="user.rememberMe" type="checkbox" value="false" /> ä¸æ¬¡èªå¨ç»å½
					</label> <a href="#/retrivePassword" class="forget-password pull-right">å¿è®°å¯ç </a>
				</div>

				<br>

				<div class="control-group text-center">
					<button type="submit" ng-disabled="myForm.$invalid"
						class="btn btn-primary btn-large">ç»å½</button>
				</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>