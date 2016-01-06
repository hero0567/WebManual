<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<header> 
			<div> 
				 <div class="navbox"> 
					  <div class="boxed"> 
						   <a class="logo fll" href=""> <h1 class="seeo">92说明书</h1> </a> 
						
						   <ul class="mainnav"> 
						    <li class="tab on"> 
						        <a href="/">首页</a> 
						    </li>
						   </ul> 
						
						   <div class="usernav"> 
							    <div class="usersearch"> 
								     <form ng-submit="search()"> 
								      	<input type="text" ng-model="key" spellcheck="false" autocomplete="off" placeholder="请输入搜索关键字" /> 
								      	<button class="jzbtn bg-c" type="submit"><i class="fa fa-search"></i></button> 
								     </form> 
							    </div> 
							    <div class="useradd"> 
								     <a target="_blank" href=""><span class="jzbtn c-lined">
								      	<i class="fa fa-plus"></i> 添加搜藏</span>
								     </a> 
							    </div> 
							    <!-- 未登录 --> 
					    <div class="userlogin"> 
					     	<a class="jzbtn" href="/signin">登录</a>
					     	<a class="jzbtn" href="/signup">注册</a> 
					    </div> 
				   </div> 
			  </div> 
		 </div> 
		 <div class="subnavbox"> 
			  <div class="boxed"> 
				   <div class="cont"> 
					    <ul class="subnav nav-comp"> 
					    	<li ng-repeat="m in menu"><a href="/fridge?subtype={{m.subType}}&count={{m.count}}"><span>{{m.subType}}</span><i>{{m.count}}</i></a></li>
					    </ul> 
				   </div> 
			  </div> 
		 </div> 
	</div> 
</header> 