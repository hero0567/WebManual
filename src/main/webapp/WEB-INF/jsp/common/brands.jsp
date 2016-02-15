<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css/common/site.css" />
<link rel="stylesheet" type="text/css" href="css/pages/brands.css" />

<section id="ledao-manual-services">
   <div class="indexTypes">
   <ul class="ledao-service">
	   <li class="ledao-service current">
		   <div class="title">
			   <h3>产品分类</h3>
			   <a href="">****系列</a>
		   </div>
		   <div class="con fl" id="con11">
			   <ul>
				   <li><a href="">产品分类名称</a></li>
				   <li><a href="">产品分类名称</a></li>
				   <li><a href="">产品分类名称</a></li>
			   </ul>
		   </div>
	   </li>
	   <li class="ledao-service">
		   <div class="title">
			   <h3>产品分类</h3>
			   <a href="">****系列</a>
		   </div>
		   <div class="con fl" id="con22">
			   <ul>
				   <li><a href="">产品分类名称</a></li>
				   <li><a href="">产品分类名称</a></li>
				   <li><a href="">产品分类名称</a></li>
			   </ul>
		   </div>
	   </li>
	   <li class="ledao-service">
		   <div class="title">
			   <h3>产品分类</h3>
			   <a href="">*****系列</a>
		   </div>
		   <div class="con fl" id="con33">
			   <ul>
				   <li><a href="">产品分类名称</a></li>
				   <li><a href="">产品分类名称</a></li>
				   <li><a href="">产品分类名称</a></li>
			   </ul>
		   </div>
	   </li>
   </ul>
</div>
       
<script type="text/javascript">
$(document).ready(function(e) {

	var currentLi =  $(".indexTypes ul li");
	$(currentLi.eq(0)).stop().animate({"width":"510px"},600);
	$(currentLi.eq(0)).children(".con").animate({"left":"193px"},600);
	
	$(currentLi).hover(function(e){
		$(this).siblings("li").stop().animate({"width":"193px"},600);
		$(this).siblings("li").removeClass("current");
		$(this).addClass("current");
		$(this).stop().animate({"width":"510px"},600);  
	});
	
});
</script>
</section>


<section id="ledao-manual-brands">
	<div class="server-slider-wrap ui-switchable"
		data-widget-cid="widget-2" style="position: relative;">
		<div class="server-slider ui-switchable-content"
			style="position: relative; width: 3.57912e +06px;">
			<div class="item-slide ui-switchable-panel" style="float: left;">

				<div class="slider-slice">
					<a class="slice-left" target="_blank"
						href="http://www.zbj.com/g-startup/" data-linkid="10004400"> <span
						class="img cyry-img"></span> <span class="tit">创业人员</span>
					</a>
					<div class="slice-right">
						<h4>
							<a class="title" target="_blank"
								href="http://www.zbj.com/g-startup/" data-linkid="10004401">创业计划</a>
							<a target="_blank" href="http://zt.zbj.com/zt/2015chuangyepd/"
								data-linkid="10004824" class="list-link-more"> 我要融资 </a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank" href="http://www.zbj.com/cyqm/s.html"
								data-linkid="10004402">起名取名</a></li>
							<li><a target="_blank" href="http://cs.zbj.com/commission/"
								data-linkid="10004405">开办公司</a></li>
							<li><a target="_blank" href="http://cs.zbj.com/"
								data-linkid="10005446"><span style="color: #ff7900;">代理记账</span></a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/ppch/sb1q10011294.html"
								data-linkid="10004403">99元做设计</a></li>
							<li><a target="_blank"
								href="http://ipr.zbj.com/trademark?_union_uid=7223946&amp;_union_itemid=136928"
								data-linkid="10004404"><span style="color: #ff7900;">商标注册</span></a></li>
							<li><a target="_blank" href="http://www.zbj.com/syzxiu/"
								data-linkid="10004406">办公室装修</a></li>
						</ul>
						<h4>
							<a class="title" target="_blank"
								href="http://www.zbj.com/g-startup/" data-linkid="10004408">品牌创立</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank" href="http://www.zbj.com/vi/"
								data-linkid="10004409">LOGO/VI</a></li>
							<li><a target="_blank" href="http://www.zbj.com/ppch/s.html"
								data-linkid="10004410">品牌策划</a></li>
							<li><a target="_blank" href="http://www.zbj.com/wxyx/s.html"
								data-linkid="10004414"><span style="color: #ff7900;">微信营销</span></a></li>
							<li><a target="_blank" href="http://zt.zbj.com/hesui"
								data-linkid="10002412">999元做包装</a></li>
							<li><a target="_blank"
								href="http://ipr.zbj.com/zt/1yuanask?_union_uid=12626329&amp;_union_itemid=137472"
								data-linkid="10004413"><span style="color: #ff7900;">1元商标保护</span></a></li>
							<li><a target="_blank" href="http://www.zbj.com/ydyykf/"
								data-linkid="10004412">APP开发</a></li>
						</ul>
					</div>
				</div>

				<div class="slider-slice">
					<a class="slice-left" target="_blank"
						href="http://www.zbj.com/g-wangdian/" data-linkid="10004370">
						<span class="img wddz-img"></span> <span class="tit">网店店主</span>
					</a>
					<div class="slice-right">
						<h4>
							<a class="title" target="_blank"
								href="http://www.zbj.com/g-wangdian/" data-linkid="10004371">新店开张</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank"
								href="http://www.zbj.com/wdzx/sb1.html" data-linkid="10004372">店铺装修</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/wdzx/xptc.html" data-linkid="10004373"><span
									style="color: #ff7900;">详情页设计</span></a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/fangan/s.html" data-linkid="10004375">新店活动策划</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/xcpsj/s.html" data-linkid="10004376">开店宣传</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/dpsysj/sb1.html" data-linkid="10004374">首页设计</a></li>
							<li><a target="_blank"
								href="http://zt.zbj.com/bgl/2016-1-19/wdzx.html"
								data-linkid="10004377"><span style="color: #ff7900;">网店装修1元起</span></a></li>
						</ul>
						<h4>
							<a class="title" target="_blank"
								href="http://www.zbj.com/g-wangdian/" data-linkid="10004378">淘出名堂</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank"
								href="http://www.zbj.com/taobaotuiguang/sb1.html"
								data-linkid="10004379">淘宝推广</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/taobaotuiguang/sb1.html"
								data-linkid="10004380">打造爆款</a></li>
							<li><a target="_blank"
								href="http://zt.zbj.com/bgl/2015-7-23/1ywd.html"
								data-linkid="10004383"><span style="color: #ff7900;">1元网店专场</span></a></li>
							<li><a target="_blank"
								href="http://search.zbj.com/s/?kw=%E7%BE%8E%E5%B7%A5%E5%8C%85%E6%9C%88&amp;type="
								data-linkid="10004384"><span style="color: #ff7900;">美工包月</span></a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/wdscfx/sb1.html" data-linkid="10004381">淘宝收藏</a></li>
							<li><a target="_blank" href="http://www.zbj.com/yxtg/"
								data-linkid="10004382">站外引流</a></li>
						</ul>
					</div>
				</div>

				<div class="slider-slice">
					<a class="slice-left" target="_blank"
						href="http://www.zbj.com/g-net/" data-linkid="10004430"> <span
						class="img hlwcyz-img"></span> <span class="tit">互联网从业者</span>
					</a>
					<div class="slice-right">
						<h4>
							<a class="title" target="_blank" href="http://www.zbj.com/g-net/"
								data-linkid="10004431">开发运营</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank"
								href="http://www.zbj.com/wzkf/sb1.html" data-linkid="10004432">网站制作</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/weixinkf/sb1.html"
								data-linkid="10004433">微信平台开发</a></li>
							<li><a target="_blank" href="http://www.zbj.com/ydyykf/"
								data-linkid="10015394">安卓开发</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/webkf/s.html" data-linkid="10004434">前端开发</a></li>
							<li><a target="_blank" href="http://www.zbj.com/uisheji/"
								data-linkid="10004435">网页设计</a></li>
							<li><a target="_blank"
								href="http://zt.zbj.com/bgl/2015-12-9/weixinyingxiao%20.html"
								data-linkid="10004436"><span style="color: #ff7900;">9块9微信营销</span></a></li>
						</ul>
						<h4>
							<a class="title" target="_blank" href="http://www.zbj.com/g-net/"
								data-linkid="10004437">内容推广</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank"
								href="http://www.zbj.com/xcpsj/s.html" data-linkid="10004439">地推宣传</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/xcpzz/sb1.html" data-linkid="10004438">宣传片制作</a></li>
							<li><a target="_blank"
								href="http://zt.zbj.com/bgl/2015-12-18/yuandan.html"
								data-linkid="10015395"><span style="color: #ff7900;">LOGO/VI一折</span></a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/tuiguang/s.html" data-linkid="10015396"><span
									style="color: #ff7900;">网络口碑营销</span></a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/seoyouhua/sb1.html"
								data-linkid="10004441">SEO优化</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/apptg/s.html" data-linkid="10015425">APP推广</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="item-slide ui-switchable-panel" style="float: left;">

				<div class="slider-slice">
					<a class="slice-left" target="_blank"
						href="http://www.zbj.com/g-culture/" data-linkid="10004415"> <span
						class="img whcm-img"></span> <span class="tit">文化传媒</span>
					</a>
					<div class="slice-right">
						<h4>
							<a class="title" target="_blank"
								href="http://zt.zbj.com/bgl/2015-10-13/zhanhui.html "
								data-linkid="10004416">展会活动</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank"
								href="http://www.zbj.com/zhantaisj/s.html"
								data-linkid="10004422">展台设计</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/fangan/s.html" data-linkid="10004417">活动策划</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/xzjsj/s.html" data-linkid="10004418">展架易拉宝</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/syzxiu/sb1.html" data-linkid="10004420">展厅装修</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/gglwa/s.html" data-linkid="10004421">广告文案</a></li>
							<li><a target="_blank"
								href="http://zt.zbj.com/bgl/2015-12-22/xcsp.html?_ga=1.240456133.777568965.1449796567"
								data-linkid="10004419"><span style="color: #ff7900;">1元抢宣传视频</span></a></li>
						</ul>
						<h4>
							<a class="title" target="_blank"
								href="http://www.zbj.com/g-culture/" data-linkid="10004423">广宣设计</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank" href="http://www.zbj.com/vi/"
								data-linkid="10004428">LOGO/VI设计</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/xccsj/s.html" data-linkid="10004426"><span
									style="color: #ff7900;">2016年宣传册</span></a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/haibaosj/sb1q10010738.html"
								data-linkid="10004424">宣传海报</a></li>
							<li><a target="_blank" href="http://www.zbj.com/bzsj/"
								data-linkid="10002415"><span style="color: #ff7900;">礼品包装</span></a></li>
							<li><a target="_blank" href="http://www.zbj.com/dmsj/s.html"
								data-linkid="10004429"><span style="color: #ff7900;">DM宣传单</span></a></li>
							<li><a target="_blank"
								href="http://kuaiyin.zbj.com/activity/card"
								data-linkid="10004427">本地印刷</a></li>
							<li><a target="_blank" href="http://www.zbj.com/yszz/"
								data-linkid="">宣传片制作</a></li>
						</ul>
					</div>
				</div>

				<div class="slider-slice">
					<a class="slice-left" target="_blank"
						href="http://www.zbj.com/g-shiti/" data-linkid="10004385"> <span
						class="img dpzg-img"></span> <span class="tit">实体店主</span>
					</a>
					<div class="slice-right">
						<h4>
							<a class="title" target="_blank"
								href="http://zt.zbj.com/bgl/2015-11-25/chuangyezhebibei%20sheji%20.html"
								data-linkid="10004386">创业筹备</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank"
								href="http://www.zbj.com/xcpsj/s.html" data-linkid="10004390"><span
									style="color: #ff7900;">企业宣传</span></a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/pinpai/s.html" data-linkid="10004388">店铺取名</a></li>
							<li><a target="_blank" href="http://www.zbj.com/syzxiu/"
								data-linkid="10004387">办公室装修</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/guanggaopai/s.html"
								data-linkid="10004392">门头招牌</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/xzjsj/s.html" data-linkid="10004389"><span
									style="color: #ff7900;">易拉宝设计</span></a></li>
							<li><a target="_blank" href="http://www.zbj.com/g-shiti/"
								data-linkid="10004391">门面装修</a></li>
						</ul>
						<h4>
							<a class="title" target="_blank"
								href="http://www.zbj.com/g-shiti/" data-linkid="10004393">品牌发展</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank" href="http://www.zbj.com/vi"
								data-linkid="10004397">LOGO设计</a></li>
							<li><a target="_blank"
								href="http://ipr.zbj.com/trademark?_union_uid=7223946&amp;_union_itemid=136929"
								data-linkid="10004394">品牌名注册</a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/xccsj/s.html" data-linkid="10004395"><span
									style="color: #ff7900;">企业宣传册</span></a></li>
							<li><a target="_blank"
								href="http://www.zbj.com/appkf/sb1.html" data-linkid="10004399">APP开发</a></li>
							<li><a target="_blank" href="http://www.zbj.com/ggsj/s.html"
								data-linkid="10004398"><span style="color: #ff7900;">品牌宣传</span></a></li>
							<li><a target="_blank" href="http://www.zbj.com/zhyx/s.html"
								data-linkid="10004396">品牌整合营销</a></li>
						</ul>
					</div>
				</div>

				<div class="slider-slice">
					<a class="slice-left" target="_blank" href="http://dakehu.zbj.com/"
						data-linkid="10004357"> <span class="img dkhpd-img"></span> <span
						class="tit">大赛频道</span>
					</a>
					<div class="slice-right">
						<h4>
							<a class="title" target="_blank"
								href="http://dakehu.zbj.com/require" data-linkid="10004358">举办大赛</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank" href="http://dakehu.zbj.com/require"
								data-linkid="10004359">大赛申请</a></li>
							<li><a target="_blank" href="http://dakehu.zbj.com/classic"
								data-linkid="10004360">经典产品</a></li>
							<li><a target="_blank" href="http://chuangzao.zbj.com/"
								data-linkid="10004361">八戒创造</a></li>
							<li><a target="_blank" href="http://gushi.zbj.com/guzhu/"
								data-linkid="10004362">雇主故事</a></li>
							<li><a target="_blank" href="http://gushi.zbj.com/weike/"
								data-linkid="10004363">威客故事</a></li>
							<li><a target="_blank" href="http://dakehu.zbj.com/about"
								data-linkid="10004364">关于频道</a></li>
						</ul>
						<h4>
							<a class="title" target="_blank"
								href="http://dakehu.zbj.com/example" data-linkid="10004365">成功案例</a>
						</h4>
						<ul class="server-list">
							<li><a target="_blank"
								href="http://zt.zbj.com/ztold/20140219_jindianzi/index.html"
								data-linkid="10004366">金点子征集</a></li>
							<li><a target="_blank"
								href="http://zt.zbj.com/ztold/20131206_wspot/"
								data-linkid="10004367">景区建设计划</a></li>
							<li><a target="_blank"
								href="http://zt.zbj.com/ztold/20140224_nongchanpin/index.html"
								data-linkid="10004368">农产品营销</a></li>
							<li><a target="_blank"
								href="http://zt.zbj.com/ztold/20140226_newmedia/index.html"
								data-linkid="10004369">新媒体营销</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<ul class="ui-switchable-nav">
			<li class="ui-switchable-trigger ui-switchable-active">1</li>
			<li class="ui-switchable-trigger">2</li>
		</ul>
	</div>
</section>

