


<!DOCTYPE html>
<html>
<head>
<title>Spam Filter</title>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<style type="text/css">
	file {
		color: #888;
		font-family: "Lato", sans-serif;
		font-size: 16pt;
		font-weight: 400;
		line-height: 1.75em;
    border-radius: 5px;
	}

</style>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Spam Filter Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!---->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<script type="text/javascript" src="js/Chart.js"></script>
<!---->
<!--Calender -->
  <link rel="stylesheet" href="css/clndr.css" type="text/css" />
  <script src="js/underscore-min.js"></script>
  <script src= "js/moment-2.2.1.js"></script>
  <script src="js/clndr.js"></script>
  <script src="js/site.js"></script>
  <!--End Calender -->
  <script src="js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
  <script>
    $(function () {
      $("#slider1").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
  <!----video -------->	
<link href="css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.jplayer.min.js"></script>
<script type="text/javascript">
//<![CDATA[
$(document).ready(function(){

	$("#jquery_jplayer_1").jPlayer({
		ready: function () {
			$(this).jPlayer("setMedia", {
				title: "Finding Nemo Teaser",
				m4v: "http://www.jplayer.org/video/m4v/Finding_Nemo_Teaser.m4v",
				poster: "http://www.jplayer.org/video/poster/Finding_Nemo_Teaser_640x352.png"
			});
		},
		swfPath: "../../dist/jplayer",
		supplied: "m4v",
		size: {
			width: "100%",
			height: "275px",
			cssClass: "jp-video-360p"
		},
		useStateClassSkin: true,
		autoBlur: false,
		smoothPlayBar: true,
		keyEnabled: true,
		remainingDuration: true,
		toggleDuration: true
	});
});
//]]>
</script>
<!----//video -------->

</head>
<body bgcolor="red">
<div class="wrap">
	<h1 class="new">Select File to upload</h1>
	<!--header-->
	<div class="header">
		<div class=" nav">
			<span class="menu"><img src="images/menu.png" alt=""> </span>	

				<script>
					$("span.menu").click(function(){
						$(".nav ul").slideToggle(500, function(){
						});
					});
				</script>
		</div>

<html>
<head>
</head>

<form action="fileuploadcompinsert.jsp" method="post" enctype="multipart/form-data" >
<center>
<h1></h3> <br>
<table >
<tr>
<input type="file" name="file1" accept=".txt, .java, .css, .sql, .html, .jsp" /></tr>
<tr>
<input type="Submit" value="Upload" /></tr>
</table>
</center>
</form>

</body>
</html>