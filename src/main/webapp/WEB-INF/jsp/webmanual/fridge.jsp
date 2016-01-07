<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
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
	
	<link rel="stylesheet" type="text/css" href="css/common/common.css" />
	<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
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
    <script src="js/app.js"></script>
	<script src="js/controllers/IndexController.js"></script>
	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body ng-app="app" ng-controller="FridgeController" class="">
	<div class="none">
		<img src="./img/favicon.png"/>
	</div>
	<!--[if lt IE 10]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class="contentwrap">
		<%@ include file="../common/header.jsp" %>
		<div class="boxed main">
			<div class="sec nobg mobile-block">
				<div class="ui-mobile-usersearch">
					<form action="#">
						<input type="text" name="key" spellcheck="false"
							autocomplete="off" placeholder="请输入搜索关键字" />
						<button class="wmanualbtn bg-c" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
			</div>
			<div class="sec">
				<div>
					<!-- block 搜索列表区 -->
					<div>
						<ul class="list-multi-result thead">
							<li><i class="cell pic"> </i> <i class="cell maincell">
									<span class="t-small">说明书名称</span>
							</i> <i class="cell"> 品牌 </i> <i class="cell round"> 型号 </i> <i
								class="cell action"> 关注 </i></li>
						</ul>
						<ul class="list-multi-result">
							<li ng-repeat="sub in subTypes"> 
					            <i class="cell pic"> 
					              <a href=""> 
					                <span class="incicon"><img ng-src="{{sub.imgUrl}}" /></span> 
					              </a> 
					            </i> 
					            <i class="cell maincell"> 
					              <p class="title"><a ng-href="/details?id={{sub.id}}">{{sub.name}}</a></p> 
					              <p class="des">{{sub.productSize}}</p> 
					              <p> 
					                <span class="tags t-small c-gray-aset"> <a href="">{{ sub.productDate | date:'yyyy-MM-dd' }}</a>上市</span>   
					              </p> 
					            </i> 
					            <i class="cell">{{sub.brand}} </i> 
					            <i class="cell round"> 
					              <a href=""><span class="tag gray">{{sub.version}}</span></a> 
					            </i> 
					            <i class="cell action"> <a href="" class="fa fa-star-o"></a> </i> 
					         </li>							
						</ul>
					</div>
					<!-- block 分页区 -->
					<div>
						<div class="ui-pagechange for-sec-bottom">
							<a href="#" ng-hide="page.pre" ng-click="goFirstPage()">首页</a> 
							<a href="#" ng-hide="page.pre" ng-click="goPrePage()">上一页</a> 
							<a href="#" ng-class="{on:  pageindex + page.ppn * page.ps == page.pn + 1}" ng-repeat="pageindex in ps" 
								ng-click="goPage(pageindex + page.ppn * page.ps)" ng-show="page.total > (pageindex - 1 + page.ppn * page.ps) * page.size && page.total > page.size">{{pageindex + page.ppn * page.ps}}</a> 
							<a href="#" ng-show="page.next" ng-click="goNextPage()">下一页</a> 
							<a href="#" ng-show="page.next" ng-click="goLastPage()">尾页 </a>
						</div>
						
					</div>
				</div>
			</div>

		</div>

		<div class="ui-maintoolbar-box">
			<div class="ui-maintoolbar">
				<a class="card hoverc scroll2top"> <span class="t-big"> <i
						class="fa fa-chevron-up"></i>
				</span>
				</a> <a class="card hoverc scroll2bottom marb5"> <span class="t-big">
						<i class="fa fa-chevron-down"></i>
				</span>
				</a> <a href="" target="_blank" class="card hovertext"> <span>
						<i class="fa fa-mobile t-big"></i> <span class="text t-small">APP</span>
				</span>
				</a> <a class="card hoverc"> <span> <i
						class="fa fa-qrcode t-big"></i>
				</span> <span class="left-qrcode"> <img src="./img/qrcode-juzi.png" />
						<span class="c-gray t-small">92说明书公众号</span>
				</span>
				</a> <a href="" target="_blank" class="card hovertext"><span
					class="t-small">反馈</span></a>
			</div>
		</div>
		<%@ include file="../common/footer.jsp" %>
	</div>
	<script>
	    window.site_url = 'https://92shuomingshu.com/';
	</script>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/lib/others/modernizr.js"></script>
	<script src="js/lib/jquery/jquery.min.js"></script>
	<script src="js/lib/bootstrap/bootstrap.min.js"></script>

	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
	<script src="js/lib/angular/angular.js"></script>
	<script src="js/controllers/FridgeController.js"></script>

</body>
</html>