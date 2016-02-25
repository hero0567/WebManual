<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="css/common/header.css" />
<script src="js/lib/jquery/jquery.js"></script>
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
	
	$('.ledao-dropdown').on("mouseover mouseout",function(event){
	 if(event.type == "mouseover"){
	  //鼠标悬浮
	  $('#ledao-dropdown-menu').removeClass('d-n');
	 }else if(event.type == "mouseout"){
	  //鼠标离开
		 $('#ledao-dropdown-menu').addClass('d-n');
	 }
	})
});
</script>

<div id="ledaobar" class="alibar2013 mod-alibar fd-clr" style="height: 29px;">
	<div class="ledao-container fd-clr">
		<div class="mobile"> 
			<a href="http://92shuomingshu.com"><i class="fa fa-mobile ledao-mobile"></i> <span>手机乐道</span></a>
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
					href="/signin"
					title="请登录" data-trace="cn_alibar_login" target="_self">请<span class="c-ff7300">登录</span></a></li>
				<li class="account-signup"><a rel="nofollow"
					href="/signup"
					title="免费注册" data-trace="cn_alibar_reg" target="_blank">免费<span class="c-ff7300">注册</span></a></li>
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
								<a rel="nofollow" class="favorite-offer" href="" title="个人信息">个人信息</a>
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
								<a rel="nofollow" class="favorite-offer" href="" title="收藏的说明书"><i class="alibar-iconfont"></i> <span>收藏的说明书</span></a>
							</dd>
						</dl>
					</div>
				</li>
			  </ul>
		</div>
	</div>
</div>

<div id="ledao-submenu" style="">
	<div class="ledao-container p-r">
		<a target="_self" title="乐道说明书" data-href="http://wmanual.com/" class="hp-huodongLink f-l">
	      <div class="hp-huodongLogo"> </div>
	    </a>
	    <div id="main-search" class="f-l ali-search">
	    	<!-- Search Box -->
			<form role="search" ng-submit="search()">
				<div class="ledao-dropdown">
					<span id="ledao-dropdown-hd" class="ledao-dropdown-hd">
						<span>全部类型</span> <i class="fa fa-chevron-down"></i>
					</span>
					<ul id="ledao-dropdown-menu" class="ledao-dropdown-menu d-n">
						<li data-type="service"><a href="javascript:;" data-linkid="search-type-switch-service">大家电</a></li>
						<li data-type="witkey"><a href="javascript:;" data-linkid="search-type-switch-witkey">生活电器</a></li>
						<li data-type="task"><a href="javascript:;" data-linkid="search-type-switch-task">厨卫电器</a></li>
						<li data-type="comprehensive"><a href="javascript:;" data-linkid="search-type-switch-comprehensive">个人护理</a></li>
					</ul>
				</div>
				
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
	<div class="ledao-container"> 
		<div class="menu">
	    	<ul>
	        	<li><a href="/index">首页</a></li>
	            <li><a href="/manuals">说明书大全</a></li>
	            <li><a href="/yellowpage">品牌黄页</a></li>
	            <li><a href="">常识分享</a></li>
	        </ul>
	    </div>
		
	    <div id="ledao_nav">
	    	<!--左侧栏目开始-->
	    	<div class="ledao_cat_nav fl">
	        	<div class="ledao_mod_title"><i class="fa fa-th-list"></i> <span>说明书分类</span></div>
	            <ul class="cate_nav">
	                <li class="" ng-repeat="item in menu">
	                    <div class="cat_6_nav">
	                        <s class="cat-nav-icon fp-iconfont">R</s>
	                        <a href="" ng-bind="item.type"></a>
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
	                        <a href="">生活家电</a> 
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_3_nav">
	                    	<s class="cat-nav-icon fp-iconfont">C</s>
	                        <a href="">厨卫家电</a> 
	                    </div>
	                </li>
	            	<li class="">
	                	<div class="cat_4_nav">
	                    	<s class="cat-nav-icon fp-iconfont">R</s>
	                        <a href="">个人护理</a>
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
	                        <li><a href="/airpurifier">空气净化器</a></li>
	                        <li><a href="/waterpurifier">净水器</a></li>
	                        <li><a href="/tv">电视机</a></li>
	                        <li><a href="/aircondition">空调</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">品牌搜索热度排行</h3>
	                    <ul class="brand_list clearfix">
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/haier.jpg" src="../../img/brands/haier.jpg">
								</a>
							</li>
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/midea.jpg" src="../../img/brands/midea.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/philips.jpg" src="../../img/brands/philips.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/samsung.jpg" src="../../img/brands/samsung.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/tcl.jpg" src="../../img/brands/tcl.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/sharp.jpg" src="../../img/brands/sharp.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/skyworth.jpg" src="../../img/brands/skyworth.jpg">
								</a>
							</li>
	                    </ul>
	                </div>
	            </div>
	
	        	<div class="cat_pannel clearfix" style="display: none;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">大家电品类</h3>
	                    <ul class="cat_label_list clearfix">
	                    	<li><a href="/tv">电视</a></li>
	                        <li><a href="/fridge">冰箱</a></li>
	                        <li><a href="/aircondition">空调</a></li>
	                        <li><a href="/washer">洗衣机</a></li>
	                        <li><a href="/waterheating">热水器</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">大家电品牌</h3>
	                    <ul class="brand_list clearfix">
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/haier.jpg" src="../../img/brands/haier.jpg">
								</a>
							</li>
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/midea.jpg" src="../../img/brands/midea.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/philips.jpg" src="../../img/brands/philips.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/samsung.jpg" src="../../img/brands/samsung.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/tcl.jpg" src="../../img/brands/tcl.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/sharp.jpg" src="../../img/brands/sharp.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/skyworth.jpg" src="../../img/brands/skyworth.jpg">
								</a>
							</li>
	                    </ul>
	                </div> 
	            </div>
	
	            <div class="cat_pannel clearfix" style="display: none;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">生活家电品类</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="/airpurifier">空气净化器</a></li>
	                        <li><a href="/waterpurifier">净水器</a></li>
	                        <li><a href="/waterdispenser">饮水机</a></li>
	                        <li><a href="/humidifier">加湿器机</a></li>
	                        <li><a href="/electricheater">电暖器</a></li>
	                        <li><a href="/garmentsteamer">挂烫机</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">生活家电品牌</h3>
	                    <ul class="brand_list clearfix">
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/haier.jpg" src="../../img/brands/haier.jpg">
								</a>
							</li>
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/midea.jpg" src="../../img/brands/midea.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/philips.jpg" src="../../img/brands/philips.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/samsung.jpg" src="../../img/brands/samsung.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/tcl.jpg" src="../../img/brands/tcl.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/sharp.jpg" src="../../img/brands/sharp.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/skyworth.jpg" src="../../img/brands/skyworth.jpg">
								</a>
							</li>
	                    </ul>
	                </div> 
	            </div>
	
	            <div class="cat_pannel clearfix" style="display: none;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">厨卫家电品类</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="/electriccooker">电饭煲</a></li>
	                        <li><a href="/microwaveoven">微波炉</a></li>
	                        <li><a href="/beanjuicemaker">豆浆机</a></li>
	                        <li><a href="/juicermaker">榨汁机</a></li>
	                        <li><a href="/electrickettle">电水壶</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">厨卫家电品牌</h3>
	                    <ul class="brand_list clearfix">
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/haier.jpg" src="../../img/brands/haier.jpg">
								</a>
							</li>
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/midea.jpg" src="../../img/brands/midea.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/philips.jpg" src="../../img/brands/philips.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/samsung.jpg" src="../../img/brands/samsung.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/tcl.jpg" src="../../img/brands/tcl.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/sharp.jpg" src="../../img/brands/sharp.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/skyworth.jpg" src="../../img/brands/skyworth.jpg">
								</a>
							</li>
	                    </ul>
	                </div> 
	            </div>
	            <div class="cat_pannel clearfix" style="display: none;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">个人护理品类</h3>
	                    <ul class="cat_label_list clearfix">
	                        <li><a href="/razor">剃须刀</a></li>
	                        <li><a href="/shaver">剃毛器</a></li>
	                        <li><a href="/hairdryer">电吹风</a></li>
	                        <li><a href="/haircut">理发器</a></li>
	                        <li><a href="/electrictoothbrush">电动牙刷</a></li>
	                    </ul>
	                </div>
	                <div class="fl cat_banner">
	                    <h3 class="cat_title">个人护理品牌</h3>
	                    <ul class="brand_list clearfix">
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/haier.jpg" src="../../img/brands/haier.jpg">
								</a>
							</li>
	                        <li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/midea.jpg" src="../../img/brands/midea.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/philips.jpg" src="../../img/brands/philips.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/samsung.jpg" src="../../img/brands/samsung.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/tcl.jpg" src="../../img/brands/tcl.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/sharp.jpg" src="../../img/brands/sharp.jpg">
								</a>
							</li>
							<li>
	                        	<a class="img-link" href="" target="_blank" data-linkid=""> 
									<img data-original="../../img/brands/skyworth.jpg" src="../../img/brands/skyworth.jpg">
								</a>
							</li>
	                    </ul>
	                </div> 
	            </div>
	        </div>
	        <!--右侧内容结束-->
	    </div>
    </div>
</div>


<!-- 保障说明 
<div class="ledao-container">
		<div id="ledao-declare">
			
	        <dl class="step-tips">
	            <dt><i class="fa fa-send"></i> <span>如何使用？</span></dt>
	            <dd>
	                <em class="num">1.</em>
	                <span class="txt">通过分类菜单拦或搜索框查找说明书</span>
	                <i class="arr"></i>
	            </dd>
	            <dd>
	                <em class="num">2.</em>
	                <span class="txt">点击找到的说明书，进入说明书详细页</span>
	                <i class="arr"></i>
	            </dd>
	            <dd>
	                <em class="num">3.</em>
	                <span class="txt">选择在线阅读或下载到本地阅读</span>
	            </dd>
	             
	        </dl>
	    </div>   
</div>-->
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
<script src="js/controllers/HeaderController.js"></script>