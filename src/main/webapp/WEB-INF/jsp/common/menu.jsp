<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="css/common/fontawesome.css" />
<link rel="stylesheet" type="text/css" href="css/common/header.css" />
<script src="js/lib/jquery/jquery.js"></script>
<script src="js/lib/others/jquery.SuperSlide.2.1.1.js"></script>
<script src="js/lib/others/jquery-listnav.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('.ledao_mod_title').on("mouseover",function(event){
		  //鼠标悬浮
		  $('#ledao_nav').removeClass('d-n').addClass('d-b');
	});
	$('#ledao_nav').on("mouseover",function(event){
		  //鼠标悬浮
		  $('#ledao_nav').removeClass('d-n').addClass('d-b');
	});
	$('#ledao_new_menu').on("mouseout",function(event){
		  //鼠标悬浮
		  $('#ledao_nav').removeClass('d-b').addClass('d-n');
	});
});
</script>

<div id="ledao_new_menu">
	<div class="ledao-container">
	    	<ul class="menu">
	    		<li class="ledao_mod_title"><a href="/"><i class="fa fa-th-list"></i> <span>说明书分类筛选</span></a></li>
	        	<li><a href="/index">说明书大全</a></li>
	            <li><a href="/yellowpage">品牌黄页</a></li>
	            <!-- <li><a href="">常识分享</a></li> -->
	        </ul>
	        
	        
	        
	        <div id="ledao_nav" class="d-n">
	    	<!--左侧栏目开始-->
	    	<div class="ledao_cat_nav fl">
	            <ul class="cate_nav">
	            	<li class="on">
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
	                        <a href="">厨卫电器</a> 
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
	             
	
	        	<div class="cat_pannel clearfix" style="display: block;">
	            	<div class="fl cat_detail grid_col_2">
	                    <h3 class="cat_title">大家电品类</h3>
	                    <ul class="cat_label_list clearfix">
	                    	<li><a href="/tv">电视(1221)</a></li>
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
	                        <li><a href="/humidifier">加湿器</a></li>
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

<style type="text/css">
	ul.menu li.ledao_mod_title{
	    width: 160px;
	    text-align:left !important;
	    height: 40px;
	    line-height: 40px;
	    color: #fff;
	    padding-left: 20px;
	    font-weight: bold;
	    background: #ff500b;
	    box-shadow: 0 1px 3px rgba(0,0,0,0.2) !important;
	}
	ul.menu {
		display:inline-block;
		margin:0px !important;
	}
	ul.menu  li{
		width:120px; 
		float:left;
		text-align:center;
		
	}
	ul.menu  li a{
		color:#fff;
		height:40px;
		line-height:40px;
		font-size:14px;
	}
	
</style>


<script type="text/javascript">
	$("#ledao_nav").slide({ 
		titCell:".cate_nav li",
		mainCell:".ledao_cat_content",
		autoPlay:false,
		interTime:7400,
		delayTime:100 
	});
</script>
 