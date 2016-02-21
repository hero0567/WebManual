<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html id="signup-page" class="page-signup page-signup--standard">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>品牌黄页 ｜ 乐道说明书</title>
<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="./img/favicon.png" />
<link rel="apple-touch-icon-precomposed" href="./img/favicon.png" />

<meta name="Keywords" content=" " />
<meta name="Description" content=" " />

<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="css/common/site.css" />
<link rel="stylesheet" type="text/css" href="css/pages/yellowpage.css" /> 

<script src="js/lib/others/modernizr.js"></script>
<script>
	  window.site_url = 'https://92shuomingshu.com/';
</script>

<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/lib/jquery/jquery.min.js"></script>

<script src="js/lib/others/jquery-listnav.js"></script>
<script src="js/lib/others/vendor.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/lib/others/ie10-viewport-bug-workaround.js"></script>
<script src="js/lib/angular/angular.js"></script>
<script src="js/lib/angular/angular-cookies.min.js"></script>
<script src="js/app.js"></script>
<script src="js/controllers/IndexController.js"></script>
<script src="js/service/UserService.js"></script>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body >
	<div class="d-n">
		<img src="./img/favicon.png" />
	</div>
	<!--[if lt IE 10]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

	<!-- Header -->
	<%@ include file="../common/header.jsp" %>
		
	<main> 
			<div class="ledao-container">
				<div id="main_content_wrap" class="outer">
					<section id="main_content" class="inner">
						<div class="tabContainer">
							<ul class="ledao-brand-th">
									<li>LOGO</li>
									<li>品牌</li>
									<li>官方客服</li>
									<li>官方支持</li>
									<li>更多联系方式</li>
									<li>添加到我的收藏夹</li>
							</ul>
							<ul id="ledaobrands-nav" class="indented demo">
								<li>
									<ul class="ledao-brand-item">
										<li>
											<a class="img-link" href="" target="_blank" data-linkid=""> 
												<span class="d-n">M</span> <img data-original="../../img/brands/midea.jpg" src="../../img/brands/midea.jpg">
											</a>	
										</li>
										<li>
											<a href="#"><span>Midea</span></a>
										</li>
										
										<li>
											<a href="tel:4008899135">
												<span class="highlight">400-889-9315</span>
											</a>
										</li>
										<li>
											<a href="http://mall.midea.com/service/index?mtag=40005.1.4" class="highlight">官网支持</a>
										</li>
										<li>
											<a href="http://www.midea.com/cn/infomation/contact_us/">更多联系方式</a>
										</li>
									</ul>
								</li>
								<li>
									<ul class="ledao-brand-item">
										<li>
											<a class="img-link" href="" target="_blank" data-linkid=""> 
												<span class="d-n">M</span> <img data-original="../../img/brands/midea.jpg" src="../../img/brands/midea.jpg">
											</a>	
										</li>
										<li>
											<a href="#"><span>Midea</span></a>
										</li>
										
										<li>
											<a href="tel:4008899135">
												<span class="highlight">400-889-9315</span>
											</a>
										</li>
										<li>
											<a href="http://mall.midea.com/service/index?mtag=40005.1.4" class="highlight">官网支持</a>
										</li>
										<li>
											<a href="http://www.midea.com/cn/infomation/contact_us/">更多联系方式</a>
										</li>
										<li>
											<a href="">添加到收藏夹</a>
										</li>
									</ul>
								</li>
								<li>
									<ul class="ledao-brand-item">
										<li>
											<a class="img-link" href="" target="_blank" data-linkid=""> 
												<span class="d-n">M</span> <img data-original="../../img/brands/midea.jpg" src="../../img/brands/midea.jpg">
											</a>	
										</li>
										<li>
											<a href="#"><span>Midea</span></a>
										</li>
										
										<li>
											<a href="tel:4008899135">
												<span class="highlight">400-889-9315</span>
											</a>
										</li>
										<li>
											<a href="http://mall.midea.com/service/index?mtag=40005.1.4" class="highlight">官网支持</a>
										</li>
										<li>
											<a href="http://www.midea.com/cn/infomation/contact_us/">更多联系方式</a>
										</li>
										<li>
											<a href="http://www.midea.com/cn/infomation/contact_us/">添加到我的收藏夹</a>
										</li>
									</ul>
								</li> 
							</ul>
						</div>
					</section>
				</div>
			</div>
	</main>
	
	<script>
		$(function(){
			$('#ledaobrands-nav').listnav({
				includeOther:true,
				noMatchText:'没有匹配内容',
				initLetter: ['the', 'a']
			}); 
			$('.demo a').click(function(e) {
				e.preventDefault();
			});
		});
	</script>

	<!-- Footer -->
	<%@ include file="../common/footer.jsp"%>
</body>
</html>