<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 

<%@ page contentType="text/html;charset=utf-8"%> 
<%

String path = request.getContextPath();

String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<title>欢迎</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link rel="stylesheet" href="<%=path %>/css/flexslider.css" type="text/css" media="all" property="" /> 
<link href="<%=path %>/css/font-awesome.css" rel="stylesheet" mwdia="all"> 			<!-- font-awesome icons -->
<link href="<%=path %>/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all">
<link href="<%=path %>/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="<%=path %>/css/style.css" type="text/css" rel="stylesheet" media="all">  
<!-- //Custom Theme files -->  
<!-- js -->
<script src="<%=path %>/js/jquery-2.2.3.min.js"></script>  
<script src="<%=path %>/js/smoothscroll.min.js"></script> 
<!-- //js -->

</head>
<body>
	<!-- banner -->
	<div class="banner w3about">
		<!-- header -->
		<div class="header">
			<div class="container">
				<div class="header-w3lsrow"> 
					<div class="logo">
						<%-- <h1><a href="<%=path %>/user/toLogin.action">LOGIN</a></h1> --%>
					</div>  
					<div class="header-right">   
						<ul>
							<%-- <li><a class="active" href="<%=path %>/user/toLogin.action">SignIn</a></li>
							<li><a href="signup.html">SignUp</a></li>  --%>
						</ul>
						<div class="clearfix"> </div> 
					</div> 
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<!-- //header --> 
		<!-- banner-text -->
		<div class="banner-text"> 
			<div class="container"> 
				<div class="banner-w3lstext">
					<h2>SignIn Form</h2>
				</div> 	 
			</div>
		</div>
		<!-- //banner-text --> 
	</div>
	<!-- //banner -->
	<!-- signIn -->
	<div class="about">
		<div class="container"> 
			<div class="login-form">
				<form action="<%=path %>/user/login.action" method="post">
					<div class="styled-input">
						<input type="text" name="Username" required="" value="">
						<label>Username</label>
						<span></span>
					</div>
					<div class="styled-input">
						<input type="password" name="Password" required="" value=""> 
						<label>Password</label>
						<span></span>
					</div> 
					<div class="wthree-text"> 
						<ul> 
							<li>
								<input type="checkbox" id="brand" name="IsRmember"  value="true">
								<label for="brand"><span></span> Remember me ?</label>  
							</li>
							<li><a href="#">Forgot password?</a> </li>
						</ul>
						<div class="clear"> </div>
					</div> 
					<input type="submit" value="Sign In">		
				</form>
				<p>Don't have an account ?<a href="signup.html" class="sign-in popup-top-anim"> Sign Up</a></p>
			</div>  
		</div>
	</div>
	<!-- //signIn -->   
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 footer-grids">
				<h3>Review</h3>
				<p>Sed ut turpis elit ullamcorper in auctor non, accumsan vel lacus nulla auctor cursus nunc. Maecenas ultricies dolor in urna tempus, id egestas erat finibus  interdum lectus eget scelerisque.</p>
			</div>
			<div class="col-md-3 footer-grids">
				<h3>Contact Us</h3>
				<p>123 NewYork City USA.<br>
					<span>Office: 908-0000</span>
				</p>
				<div class="footer-bottom">
					<a ><i class="fa fa-wechat"> </i><span><img src="<%=path %>/images/myChat.jpg"></span></a>
					<a ><i class="fa fa-qq"> </i><span><img src="<%=path %>/images/myQQ.jpg"></span></a>
					<a ><i class="fa fa-rmb"> </i><span><img src="<%=path %>/images/payForWechat.jpg"></span></a>
				</div>
			</div>
			<div class="col-md-5 footer-grids">
				<h3>Flickr</h3>
				<a class="footer-img" href=""><img src="<%=path %>/images/i4.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="<%=path %>/images/i2.jpg" alt=""></a>
				<a class="footer-img" href=""><img src="<%=path %>/images/i3.jpg" alt=""></a>
			</div>
			<div class="clearfix"> </div>
			<div class="footer-copy">
				<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.17sucai.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
		</div>
	</div>
	<!-- //footer --> 
	<!-- menu js -->
	<script>
		$('.toggle').on('click', function() {
			$('.menu').toggleClass('open');  
			$('.w3nav').toggleClass('show-w3nav');  
			$('.w3nav a').toggleClass('show-w3nav-link');  
			$('.toggle').toggleClass('close');  
		});
	</script>
	<!-- //menu js -->
	<!-- start-smooth-scrolling -->
	<script type="text/javascript" src="<%=path %>/js/move-top.js"></script>
	<script type="text/javascript" src="<%=path %>/js/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<!-- //smooth-scrolling-of-move-up --> 
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<%=path %>/js/bootstrap.js"></script>
</body>
</html>