<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    
	<title>免责声明 ｜ 乐道说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="/img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="/img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="/css/common/bootstrap.min.css" />	
	<link rel="stylesheet" type="text/css" href="/css/common/fontawesome.css" />
	<link rel="stylesheet" type="text/css" href="/css/common/site.css" />
	
	<script src="/js/lib/angular/angular.js"></script>
	<script src="/js/app.js"></script>
	<script src="/js/controllers/SelfInfoController.js"></script>
	<script src="/js/lib/others/modernizr.js"></script>
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script> 
	
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="/js/lib/jquery/jquery.min.js"></script>
    <script src="/js/lib/bootstrap/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="/js/lib/others/ie10-viewport-bug-workaround.js"></script>
    
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body ng-app="app" ng-controller="SelfInfoController"> 
	<div class="d-n">
	  <img src="/img/favicon.png" />
	</div> 
	<!--[if lt IE 10]>
       <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]--> 
	<%@ include file="../common/header.jsp" %>
	
	<main class="margin-top-20">	
		<div class="container white-block">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<section class="white-block" id ="declare" >
						<div class="section_head" >
						    <h3 class="section-title f-l"><i class="fa fa-th-large"></i> <span>修改个人信息</span></h3>  
						</div>
						<div ng-show="updateSuccess">密码修改成功。</div>
						<div ng-show="updateFailed">密码修改失败，请重新修改。</div>
						<div class="section_body loginbox-thin">
							 <form id="form-update" name="myForm" novalidate  ng-submit="updateSelfInfo()">
							 	<div class="ng-hide"><input name="user.username" type="text"/></div>
								<div class="row">
									<div class="control-group text-center clearfix">
										<input name="oldPwd" type="password"
											ng-model="user.oldPwd" ng-minlength="6" ng-maxlength="16" required 
											placeholder="请输入旧密码" class="pull-left"><span
											class="add-on margin-left-40"><i class="icon-lock"></i></span>
										<div
											ng-show="myForm.oldPwd.$dirty && !myForm.oldPwd.$valid"
											class="span12 alert alert-error text-left" ng-bind="'必填字段，请输入长度在6-16位的密码！'"></div>
									</div>
								</div>
								<div class="row">
									<div class="control-group text-center clearfix">
										<input name="newPwd" type="password"
											ng-model="user.newPwd" ng-minlength="6" ng-maxlength="16" required 
											placeholder="请输入新密码" class="pull-left"><span
											class="add-on margin-left-40"><i class="icon-lock"></i></span>
										<div
											ng-show="myForm.newPwd.$dirty && !myForm.newPwd.$valid"
											class="span12 alert alert-error text-left" ng-bind="'必填字段，请输入长度在6-16位的密码！'"></div>
									</div>
								</div>
	
								<div class="row">
									<div class="control-group text-center clearfix">
										<input name="confirmUserPassword" type="password" required 
											ng-model="user.confirmUserPassword" ng-minlength="6" ng-maxlength="16" placeholder="请再次输入新密码"
											class="pull-left"><span class="add-on margin-left-40"><i
											class="icon-lock"></i></span>
										<div
											ng-show="myForm.confirmUserPassword.$dirty && user.confirmUserPassword != user.newPwd"
											class="span12 alert alert-error text-left" ng-bind="'密码确认不对，请再次输入！'"></div>
									</div>
								</div>							
	
								 
								<br>
								<div class="row">
									<button class="wmanualbtn" type="submit">更新</button>
	
								</div>
							</form>
							
							
						</div>
					</section>
				</div>
			</div>
		</div>
	</main>
		
	<%@ include file="../common/footer.jsp" %>
</body>
</html>