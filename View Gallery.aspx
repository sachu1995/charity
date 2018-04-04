﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View Gallery.aspx.cs" Inherits="Online_Charity_Website.View_Gallery" %>
<!DOCTYPE html>
<html>
<head>
<title>Charity a charity Category Flat Bootstrap Responsive Web Template | Gallery :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/lightbox.css">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Charity Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>
<body>
    <form id="form1" runat="server">
<!---->
<div class="header">
	 <div class="container">
		 <div class="header-top">
            <div class="logo">
              <img src="images/karunyalogo_c.png">
               <!--<a href="index.html"><h1>Charity <span>Organization</span></h1></a>-->
           </div>
			 <!--<div class="hdr-address">
				 <div class="address1">
					 <h5> 9560 St, Eiusmod Tempor inc</h5>
					 <p>Los Angeles County, California</p>
				 </div>
				 <div class="call">
					 <h5>+2 800 544 6035</h5>
					 <p>Call me</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 <div class="search">
				 <div class="search-box">
					 <div id="sb-search" class="sb-search">
						  <form>
							<input class="sb-search-input" placeholder="search term..." type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
						 </form>
					 </div>
				 </div>
			 </div>-->
			 <div class="clearfix"> </div>
			 <!-- search-scripts -->
			<script src="js/classie.js"></script>
			<script src="js/uisearch.js"></script>
				<script>
				    new UISearch(document.getElementById('sb-search'));
				</script>
			<!-- //search-scripts -->
		 </div>
		 <div class="top-menu">
			 <span class="menu">MENU</span>
			 <ul>
			 <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
			 <li><a href="about.html"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>About</a></li>
			 <li><a href="shortcodes.html"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>Shortcodes</a></li>
			 <li class="active"><a href="gallery.html"><span class="glyphicon glyphicon-picture" aria-hidden="true"></span>Gallery</a></li>
			 <li><a href="contact.html"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Contact</a></li>
			 </ul>
		 </div>
		 <!-- script-for-menu -->
		 <script>
		     $("span.menu").click(function () {
		         $(".top-menu ul").slideToggle("slow", function () {
		         });
		     });
		 </script>
		 <!-- script-for-menu -->
		 <div class="clearfix"></div>
	 </div>
</div>
<!---->
<div class="gallery">
	 <div class="container">
		 <h2>Gallery</h2>
		 <div class="gallery-bottom">
             <asp:Repeater ID="RptGal" runat="server">   
                 <ItemTemplate>
             <div class="col-md-3 gallery-grid">
                 &nbsp;&nbsp;&nbsp;&nbsp;
						 <img class="exampleimage" src="<%#Eval("Image_path") %>" alt=""/>	
                 </div>
                     </ItemTemplate>               				
             </asp:Repeater>
                 
				</div>								
		  </div>
</div>	
<script src="js/lightbox-plus-jquery.min.js"></script>
<!---->
        <asp:Image ID="Image2" runat="server"  />
<div class="copywrite">
	 <div class="container">
			 <p> © 2015 Charity. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
	 </div>
</div>
        
<!---->
    </form>
</body>
</html>
<a href="Gallery.aspx">Gallery.aspx</a>


