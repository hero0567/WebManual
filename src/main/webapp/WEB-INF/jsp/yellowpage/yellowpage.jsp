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
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
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
		<div class="ledao-banners">
			<div class="ledao-container">
				<div id="main_content_wrap" class="outer">
					<section id="main_content" class="inner">
						<div id="tabpage_3" class="tabContainer">
							<ol id="ledao-brands" class="indented demo">
								<li><a href="#">411 Services</a></li>
								<li><a href="#">Accountants</a></li>
								<li><a href="#">Accounting &amp; Bookkeeping - General Service</a></li>
								<li><a href="#">Acupuncture</a></li>
								<li><a href="#">Advertising</a></li>
								<li><a href="#">Advertising - Agencies &amp; Counselors</a></li>
								<li><a href="#">Advertising - Computer</a></li>
								<li><a href="#">Advertising - Promotional</a></li>
								<li><a href="#">Attorneys - Service Bureaus</a></li>
								<li><a href="#">Auctioneers</a></li>
								<li><a href="#">Audio Visual Consultants</a></li>
								<li><a href="#">Audio Visual Production Service</a></li>
								<li><a href="#">Automobile - Renting</a></li>
								<li><a href="#">Automobile - Repair &amp; Service</a></li>
								<li><a href="#">Cabinet Makers</a></li>
								<li><a href="#">Cabinets</a></li>
								<li><a href="#">Cafeterias</a></li>
								<li><a href="#">Calligraphers</a></li>
								<li><a href="#">Campgrounds</a></li>
								<li><a href="#">Dancing Instruction</a></li>
								<li><a href="#">Data Communications Equipment &amp;
										Systems - Networks</a></li>
								<li><a href="#">Deck Builders</a></li>
								<li><a href="#">Drywall &amp; Insulation Contractors</a></li>
								<li><a href="#">Earthquake Products &amp; Services</a></li>
								<li><a href="#">E-Commerce</a></li>
								<li><a href="#">Education Centers</a></li>
								<li><a href="#">Educational Consultants</a></li>
								<li><a href="#">Educational Service - Business</a></li>
								<li><a href="#">Electric Contractors</a></li>
								<li><a href="#">Electric Transmission Equipment
										(Manufacturers)</a></li>
								<li><a href="#">Electrolysis</a></li>
								<li><a href="#">Erosion Control</a></li>
								<li><a href="#">Gas - Liquefied Petroleum - Bottled
										&amp; Bulk (Wholesale)</a></li>
								<li><a href="#">Guide Service</a></li>
								<li><a href="#">Gymnastic Instruction</a></li>
								<li><a href="#">Halls &amp; Auditoriums</a></li>
								<li><a href="#">Handyman Services</a></li>
								<li><a href="#">Hardware - Retail</a></li>
								<li><a href="#">Hardwood</a></li>
								<li><a href="#">Jewelers - Retail</a></li>
								<li><a href="#">Jewelry - Designers</a></li>
								<li><a href="#">Laboratories</a></li>
								<li><a href="#">Laboratories - Research &amp;
										Development</a></li>
								<li><a href="#">Land Companies</a></li>
								<li><a href="#">Landfills - Sanitary</a></li>
								<li><a href="#">Lumber (Manufacturers)</a></li>
								<li><a href="#">Lumber - Retail</a></li>
								<li><a href="#">Machine Shops</a></li>
								<li><a href="#">Parking Area &amp; Lots Maintenance
										&amp; Marking</a></li>
								<li><a href="#">Parks</a></li>
								<li><a href="#">Party Supplies</a></li>
								<li><a href="#">Patio &amp; Deck Cleaning &amp;
										Restoration</a></li>
								<li><a href="#">Paving Contractors</a></li>
								<li><a href="#">Pumps (Wholesale)</a></li>
								<li><a href="#">Roofing - Service Consultants</a></li>
								<li><a href="#">Sand &amp; Gravel (Wholesale)</a></li>
								<li><a href="#">School Supplies (Wholesale)</a></li>
								<li><a href="#">Schools &amp; Educational Services</a></li>
								<li><a href="#">Schools - Nursery &amp; Kindergarten
										Academic</a></li>
								<li><a href="#">Schools - Universities &amp; Colleges
										Academic</a></li>
								<li><a href="#">Shoe &amp; Boot Repairing</a></li>
								<li><a href="#">Shoes - Retail</a></li>
								<li><a href="#">Shopping Centers &amp; Malls</a></li>
								<li><a href="#">Shower Doors &amp; Enclosures</a></li>
								<li><a href="#">Tutoring</a></li>
								<li><a href="#">Ultrasonic Equipment &amp; Supplies
										(Wholesale)</a></li>
								<li><a href="#">Upholsterers</a></li>
								<li><a href="#">Windows - Repairing</a></li>
								<li><a href="#">Wineries</a></li>
								<li><a href="#">Wines - Consultants</a></li>
								<li><a href="#">Wines - Retail</a></li>
								<li><a href="#">Woodworkers</a></li>
							</ol>
						</div>
					</section>
				</div>
			</div>
		</div>
	</main>
	
	
	<script>
		$(function(){
			$('#ledao-brands').listnav({
				initLetter: 'c'
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