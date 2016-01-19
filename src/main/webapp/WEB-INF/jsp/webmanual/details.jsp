<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class=" juzi js flexbox no-touch opacity csstransforms3d svg" lang="">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
	<title>说明书详细 ｜ 92说明书</title>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="./img/favicon.png" />
	<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />
	
	<meta name="Keywords" content=" " />
	<meta name="Description" content=" " />
	
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
	<link rel="stylesheet" type="text/css" href="css/pages/details.css" />
	<script>
	  window.site_url = 'https://92shuomingshu.com/';
	</script>  
	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/lib/jquery/jquery.min.js"></script>
    <script src="js/lib/bootstrap/bootstrap.min.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
    <script src="js/lib/angular/angular.js"></script>
    <script src="js/lib/angular/angular-cookies.min.js"></script>
    <script src="js/app.js"></script>
	<script src="js/controllers/DetailsController.js"></script>
	<script src="js/service/UserService.js"></script>	
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body ng-app="app" ng-controller="DetailsController" class=""> 
	<div class="d-n">
	  <img src="./img/favicon.png" />
	</div> 
	<!--[if lt IE 10]>
	       <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
	   <![endif]--> 
	<div class="contentwrap"> 
		<%@ include file="../common/header.jsp" %>	
		
		<div class="container margin-bottom-20">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-9">
					<section class="custom-brands-filter white-block p-l-r">
						<div class="custom-section-head">
							<a href="" class="custom-section-title f-l"><i class="fa fa-globe"></i> <span ng-bind="handbook.name"> </span></a>
							<a class="f-r" href=""><i class="fav-star" ng-class="{true: 'fa fa-star', false: 'fa fa-star-o'}[handbook.favor == true]" ng-click="addFavorite(user.id, handbook)"></i> <span>添加到收藏</span></a>
						</div>
						<div class="custom-section-body">
							<div class="custom-tabs-tab">
								<div class="row">
									<div class="col-lg-6 col-md-6 col-sm-12">
										<img src="img/detailPageDefault.jpg" alt="..." class="img-rounded">
									</div>
									<div class="col-lg-6 col-md-6 col-sm-12">
										<ul>
											<li>
							                    <i class="fa fa-home"></i> 厂商： 
							                    <a ng-href="/result?key={{handbook.brand}}" ng-bind="handbook.brand"></a>
						                    </li>
							                <li>
							                    <i class="fa fa-calendar"></i> 上架时间： 
							                    <span ng-bind="handbook.productDate | date:'yyyy-MM-dd'"></span>
							                </li>
							                <li>
							                    <i class="fa fa-phone"></i> 官方客服电话： 
							                    <a href="tel:02885303320" ng-repeat="s in services " ng-bind="s.tel"> </a>
							                </li>
							                
							                <li>
							                    <i class="fa fa-envelope"></i> 官方邮箱： 
							                    <a href="mailto:jack@92shuomingshu.com" ng-repeat="s in services " ng-bind="s.email"> </a>
							                </li>
							                
							                <li>
							                    <i class="fa fa-map-marker"></i>官方网站： 
							                    <span ng-repeat="s in services" ng-bind="s.site"> </span>
							                </li>
							                <li>
							                    <i class="fa fa-map-marker"></i>浏览次数： 
							                    <span  ng-bind="handbook.viewCount"> </span>
							                </li>
							                <li>
							                    <i class="fa fa-map-marker"></i>说明书大小： 
							                    <span ng-bind="handbook.downloadCount"> </span>
							                </li>
							                <li>
							                    <i class="fa fa-map-marker"></i>下载次数： 
							                    <span ng-bind="handbook.downloadCount"> </span>
							                </li>
							                <li>
							                    <i class="fa fa-map-marker"></i>收藏次数： 
							                    <span ng-bind="handbook.favorCount"> </span>
							                </li>
						                </ul>
									</div>
								</div>
							
								<div class="row">
									<div class="col-lg-12 col-md-12 col-sm-12 pl-mt20 margin-20 d-b t-r">
						                  <a class="custom-btn" href="">在线阅读</a>
						                  <a class="custom-btn" href="#" ng-click="download()">下载PDF</a> 
						            </div>
								</div>
							</div>
						</div>
					</section>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3">
					<section class="custom-brands-filter white-block p-l-r">
						<div class="custom-section-head">
							<a href="" class="custom-section-title f-l"><i class="fa fa-cog"></i> 维修保养常识 </span></a>
							<a href="" class="custom-section-more f-r">查看所有</a>
						</div> 
						<div class="custom-section-body">
							<ul class="list-link-lite top ">
					           <li>
						          <a href="" target="_blank">海尔液晶电视说明书 <span class="flr">6250</span></a>
						       </li>
					           <li>
						          <a href="" target="_blank">TCL液晶电视说明书 <span class="flr">5771</span></a>
						       </li>
						       <li>
						          <a href="" target="_blank">海尔液晶电视说明书 <span class="flr">6250</span></a>
						       </li>
						       <li>
						          <a href="" target="_blank">TCL液晶电视说明书 <span class="flr">5771</span></a>
						       </li>       
						       <li>
						          <a href="" target="_blank">海尔液晶电视说明书 <span class="flr">6250</span></a>
						       </li>
						       <li>
						          <a href="" target="_blank">TCL液晶电视说明书 <span class="flr">5771</span></a>
						       </li>       
							</ul>
						
						</div>
						
					</section>
				</div>
			</div>
		</div>
		
		<%@ include file="../common/footer.jsp" %>
	</div>
	
	<script>
	    window.site_url = 'https://92shuomingshu.com/';
	</script>
</body>
</html>