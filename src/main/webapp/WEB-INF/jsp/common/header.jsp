<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<script src="js/controllers/HeaderController.js"></script>
<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="css/common/header.css" />

<div id="ledaobar" class="alibar2013 mod-alibar fd-clr" style="height: 29px;">
	<div class="ledao-container fd-clr">
		<div class="mobile"> 
			<a href="/index"><i class="fa fa-mobile ledao-mobile"></i> <span>手机乐道</span></a>
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

<%@ include file="../common/menu.jsp" %>