<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="css/common/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/common/header.css" />

<script src="js/lib/jquery/jquery.min.js"></script>
<script src="js/lib/others/jquery.SuperSlide.2.1.1.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	var $menuArrow = $('#user-menu-account-arrow');
	$('.user-menu').mouseenter( function(){
		$('#custom-user-menu').show();
		$menuArrow.removeClass('fa-chevron-down').addClass('fa-chevron-up')
	})
	$('.user-menu').mouseleave( function(){
		$('#custom-user-menu').hide();
		$menuArrow.addClass('fa-chevron-down').removeClass('fa-chevron-up')
	})
});
</script>

<div id="ledaobar" class="alibar2013 mod-alibar fd-clr"
	style="height: 29px;">
	<div class="container fd-clr">
		<div class="mobile">
			<a href="http://92shuomingshu.com">手机乐道</a>
		</div>
		<div class="account-sign-status">
			<ul>
				<li class="account-welcome vipInfoBox">
					<div class="nav-title">
						<span class="account-id">欢迎来到乐道说明书</span>
					</div>
					<div class="nav-content"></div>
				</li>
				<li class="account-signin"><a rel="nofollow"
					href="/singin"
					title="请登录" data-trace="cn_alibar_login" target="_self">请登录</a></li>
				<li class="account-signup"><a rel="nofollow"
					href="singup"
					title="免费注册" data-trace="cn_alibar_reg" target="_blank">免费注册</a></li>
			</ul>
		</div>
		<div class="topnav">
			<ul>
				<li class="topnav-myali extra">
					<div class="nav-title">
						<a rel="nofollow" class="nav-arrow" href=""
							title="我的乐道" data-trace="cn_alibar_myali" target="_blank">我的乐道</a>
					</div>
					<div class="nav-content">
						<dl>
							<dd>
								<a rel="nofollow" class="favorite-offer"
									href=""
									title="个人信息">个人信息</a>
							</dd>
						</dl>
					</div>
				</li>
				<li class="topnav-favorite extra">
					<div class="nav-title">
						<a class="nav-arrow"
							href=""
							title="收藏夹" data-trace="cn_alibar_myali_fav" target="_blank">
							<i class="fa fa-heart"></i> <span>收藏夹</span>
						</a>
					</div>
					<div class="nav-content">
						<dl>
							<dd>
								<a rel="nofollow" class="favorite-offer"
									href=""
									title="收藏的货品"><i class="alibar-iconfont"></i> <span>收藏的说明书</span></a>
							</dd>
						</dl>
					</div>
				</li>
			  </ul>
		</div>
	</div>
</div>

 


<div style="background-color:#f6f6f6; height:120px; width:100%;display:inline-block; position:relative;">
	<div class="container p-r">
		<a target="_self" title="乐道说明书" data-href="http://wmanual.com/" class="hp-huodongLink f-l">
	      <div class="hp-huodongLogo">
	      </div>
	    </a>
	    <div id="main-search" class="f-l ali-search">
	    	<!-- Search Box -->
			<form role="search" ng-submit="search()">
		      <input id="ledaosearch-keywords" class="empty active" accesskey="s" maxlength="50" name="keywords" ng-model="$parent.key"
						spellcheck="false" autocomplete="off" placeholder="请输入查询关键字">
		      <button type="button" id="ledaosearch-submit" ><i class="fa fa-search"></i> <span>搜 索</span></button>
		      <div class="fd-hide" id="hidden_propoty"></div>
		      <input type="hidden" id="" name="n" value="y">
		      <input type="hidden" name="spm" value="a260k.635.1998096057.d1">
		    </form>
	    </div>
    	<a href="" class="qr-code">
	    	<span class="text">&nbsp;&nbsp;下载手机乐道</span>
		    <span class="img"></span>
		</a>
	</div>
</div>

<div id="ledao_new_menu"></div>

<div class="ledao_box">
	<div class="container"> 
		<div class="menu">
	    	<ul>
	        	<li><a href="">首页</a></li>
	            <li><a href="">说明书</a></li>
	            <li><a href="">品牌街</a></li>
	            <li><a href="">知识分享</a></li>
	        </ul>
	    </div>
		
	    <div id="ledao_nav">
	    	<!--左侧栏目开始-->
	    	<div class="ledao_cat_nav fl">
	        	<div class="ledao_mod_title"><i class="fa fa-th-list"></i> <span>说明书分类</span></div>
	            <ul class="cate_nav">
	                <li class="">
	                    <div class="cat_6_nav">
	                        <s class="cat-nav-icon fp-iconfont">R</s>
	                        <a href="">热门搜索</a>
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_1_nav">
	                    	<s class="cat-nav-icon fp-iconfont">D</s>
	                        <a href="">大家电</a>
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_2_nav">
	                    	<s class="cat-nav-icon fp-iconfont">S</s>
	                        <a href="">生活电器</a> 
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_3_nav">
	                    	<s class="cat-nav-icon fp-iconfont">C</s>
	                        <a href="">厨房电器</a> 
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_4_nav">
	                    	<s class="cat-nav-icon fp-iconfont">R</s>
	                        <a href="">日常护理</a>
	                    </div>
	                </li>
	            </ul>
	        </div>
	        <!--左侧栏目结束-->
	        <!--右侧内容开始-->
	        <div class="ledao_cat_content fr">
	            <div class="cat_pannel clearfix" style="display: none;">
	                <div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">品类搜索热度排行</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">空气净化器</a></li>
	                        <li><a href="">净水器</a></li>
	                        <li><a href="">电视机</a></li>
	                        <li><a href="">空调</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">品牌搜索热度排行</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">空气净化器</a></li>
	                        <li><a href="">净水器</a></li>
	                        <li><a href="">电视机</a></li>
	                        <li><a href="">空调</a></li>
	                    </ul>
	                </div>
	            </div>
	
	        	<div class="cat_pannel clearfix" style="display: none;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">大家电品类</h3>
	                    <ul class="cat_label_list clearfix">
	                    	<li><a href="">电视</a></li>
	                        <li><a href="">冰箱</a></li>
	                        <li><a href="">空调</a></li>
	                        <li><a href="">洗衣机</a></li>
	                        <li><a href="">热水器</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">大家电品牌</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">空气净化器</a></li>
	                        <li><a href="">净水器</a></li>
	                        <li><a href="">电视机</a></li>
	                        <li><a href="">空调</a></li>
	                    </ul>
	                </div> 
	            </div>
	
	            <div class="cat_pannel clearfix" style="display: none;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">生活电器品类</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">电视</a></li>
	                        <li><a href="">冰箱</a></li>
	                        <li><a href="">空调</a></li>
	                        <li><a href="">洗衣机</a></li>
	                        <li><a href="">热水器</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">生活电器品牌</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">空气净化器</a></li>
	                        <li><a href="">净水器</a></li>
	                        <li><a href="">电视机</a></li>
	                        <li><a href="">空调</a></li>
	                    </ul>
	                </div> 
	            </div>
	
	            <div class="cat_pannel clearfix" style="display: none;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">厨房电器品类</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">电视</a></li>
	                        <li><a href="">冰箱</a></li>
	                        <li><a href="">空调</a></li>
	                        <li><a href="">洗衣机</a></li>
	                        <li><a href="">热水器</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">厨房电器品牌</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">空气净化器</a></li>
	                        <li><a href="">净水器</a></li>
	                        <li><a href="">电视机</a></li>
	                        <li><a href="">空调</a></li>
	                    </ul>
	                </div> 
	            </div>
	            <div class="cat_pannel clearfix" style="display: none;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">日常护理电器品类</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">电视</a></li>
	                        <li><a href="">冰箱</a></li>
	                        <li><a href="">空调</a></li>
	                        <li><a href="">洗衣机</a></li>
	                        <li><a href="">热水器</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">日常护理电器品牌</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="">空气净化器</a></li>
	                        <li><a href="">净水器</a></li>
	                        <li><a href="">电视机</a></li>
	                        <li><a href="">空调</a></li>
	                    </ul>
	                </div> 
	            </div>
	        </div>
	        <!--右侧内容结束-->
	    </div>
    </div>
</div>
<script type="text/javascript">

$("#ledao_nav").slide({ 
	titCell:".cate_nav li",
	mainCell:".ledao_cat_content",
	autoPlay:false,
	interTime:7400,
	delayTime:100 
});
</script>
 

<header ng-app="app" ng-controller="HeaderController">
	<nav class="custom-navbar hide">
		<div class="container hide">
			<div class="custom-navbar-header f-l">
				<a class="logo" href="/index"> </a>
			</div>
			<div id="navbar">
				<!-- Main Navigation -->
				<ul class="custom-navbar-nav custom-main-menu f-l ">
					<li class="active"><a href="/index">首页</a></li>
				</ul>

				<!-- Add to favorite, Singnin and Singup -->
				<ul class="custom-navbar-nav custom-header-ul f-r">
					<li><a href="http://www.92shuomingshu.com"
						title="92shuomingshu" rel="sidebar"> <span class="save-site"><i
								class="fa fa-plus"></i> 收藏本站 </span>
					</a></li>
					<li ng-show="!user.id"><a class="signin" href="/signin">登录</a>
					</li>
					<li ng-show="!user.id"><a class="signup" href="/signup">注册</a>
					</li>
					<li ng-show="user.id">
						<div class="user-menu">
							<a class="user-menu-account" href="" title="进入个人中心"><span
								ng-bind="user.username"></span> <i id="user-menu-account-arrow"
								class="fa fa-chevron-down"></i></a>
							<!-- <a><img src="img/user.png"></a> -->
							<div id="custom-user-menu">
								<ul class="list-dropdown-menu">
									<li><a href="/favorites">我的收藏</a></li>
									<li><a href="" ng-click="logout()">退出</a></li>
								</ul>
							</div>
						</div>
					</li>
				</ul>

				<!-- Search Box -->
				<form class="custom-search-form" role="search" ng-submit="search()">
					<input type="text" class="custom-search-box" ng-model="$parent.key"
						spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" />
					<button type="submit" id="custom-search-button"
						class="custom-search-button">
						<i class="fa fa-search"></i>
					</button>
				</form>
			</div>
		</div>
	</nav>
</header>
<div class="container">
	<!-- Search Box -->
	<form id="main-search-box" class="custom-search-form" role="search"
		ng-submit="search()">
		<input type="text" class="custom-search-box" ng-model="$parent.key"
			spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" />
		<button type="submit" class="custom-search-button">
			<i class="fa fa-search"></i>
		</button>
	</form>
</div>

<script src="js/controllers/HeaderController.js"></script>