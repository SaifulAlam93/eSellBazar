<%-- 
    Document   : single-post-v2
    Created on : Jul 12, 2020, 10:13:07 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->


<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Single page | LookCare</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,900,700,700italic,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700,600' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300,500,700' rel='stylesheet' type='text/css'>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-override.css">
	<link rel="stylesheet" href="css/skin-lblue.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="css/setting.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>

<body>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->


<!-- Start Loading -->
<section class="loading-overlay">
	<div class="Loading-Page">
		<h1 class="loader">Loading...</h1>
	</div>
</section>
<!-- End Loading  -->

<!-- start header -->
<header>
	<!-- Top bar starts -->
	<div class="top-bar">
		<div class="container">

			<!-- Contact starts -->
			<div class="tb-contact pull-left">
				<!-- Email -->
				<i class="fa fa-envelope color"></i> &nbsp; <a href="mailto:contact@domain.com">contact@domain.com</a>
				&nbsp;&nbsp;
				<!-- Phone -->
				<i class="fa fa-phone color"></i> &nbsp; +1 (342)-(323)-4923
			</div>
			<!-- Contact ends -->

			     <!-- Shopping kart starts -->
                    <div class="tb-shopping-cart pull-right">
                        <!-- Link with badge -->
                        <a href="#" class="btn btn-white btn-xs b-dropdown"><i class="fa fa-shopping-cart"></i> <i class="fa fa-angle-down color"></i> <span class="badge badge-color">2</span></a>
                        <!-- Dropdown content with item details -->
                        <div class="b-dropdown-block">
                            <!-- Heading -->
                            <h4><i class="fa fa-shopping-cart color"></i> Your Items</h4>

                            <!-- ************forEach function start************** -->
                            <ul>
                                <c:forEach var="cart" items="${cartlist}">
                                    <li>
                                        <!-- Item image -->
                                        <div class="cart-img">
                                           
                                            <a href="#"><img src="img/ecommerce/view-cart/${cart.productname}" alt="" class="img-responsive" /></a>
                                        </div>
                                        <!-- Item heading and price -->  
                                        <div class="cart-title">
                                            <h5><a href="#">${cart.quentity}</a></h5>
                                            <!-- Item price -->
                                            <span class="label label-color label-sm">"${cart.totalprice}"</span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                </c:forEach>
                            </ul>
                            <a href="#" class="btn btn-white btn-sm">View Cart</a> &nbsp; <a href="#" class="btn btn-color btn-sm">Checkout</a>
                        </div>
                    </div>

                    <!-- ************forEach function End************** -->
 
                    <!-- Shopping kart ends -->

			<!-- Langauge starts -->
			<div class="tb-language dropdown pull-right">
				<a href="#" data-target="#" data-toggle="dropdown"><i class="fa fa-globe"></i> English <i class="fa fa-angle-down color"></i></a>
				<!-- Dropdown menu with languages -->
				<ul class="dropdown-menu dropdown-mini" role="menu">
					<li><a href="#">Germany</a></li>
					<li><a href="#">France</a></li>
					<li><a href="#">Brazil</a></li>
				</ul>
			</div>
			<!-- Language ends -->

			<!-- Search section for responsive design -->
			<div class="tb-search pull-left">
				<a href="#" class="b-dropdown"><i class="fa fa-search square-2 rounded-1 bg-color white"></i></a>
				<div class="b-dropdown-block">
					<form>
						<!-- Input Group -->
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Type Something">
									<span class="input-group-btn">
										<button class="btn btn-color" type="button">Search</button>
									</span>
						</div>
					</form>
				</div>
			</div>
			<!-- Search section ends -->

			<!-- Social media starts -->
			<div class="tb-social pull-right">
				<div class="brand-bg text-right">
					<!-- Brand Icons -->
					<a href="#" class="facebook"><i class="fa fa-facebook square-2 rounded-1"></i></a>
					<a href="#" class="twitter"><i class="fa fa-twitter square-2 rounded-1"></i></a>
					<a href="#" class="google-plus"><i class="fa fa-google-plus square-2 rounded-1"></i></a>
				</div>
			</div>
			<!-- Social media ends -->

			<div class="clearfix"></div>
		</div>
	</div>

	<!-- Top bar ends -->

	<!-- Header One Starts -->
	<div class="header-1">

		<!-- Container -->
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<!-- Logo section -->
					<div class="logo">
						<h1><a href="index"><i class="fa fa-bookmark-o"></i> LookCare</a></h1>
					</div>
				</div>
				<div class="col-md-6 col-md-offset-2 col-sm-5 col-sm-offset-3 hidden-xs">
					<!-- Search Form -->
					<div class="header-search">
						<form>
							<!-- Input Group -->
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Type Something">
										<span class="input-group-btn">
											<button class="btn btn-color" type="button">Search</button>
										</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Navigation starts -->

		<div class="navi">
			<div class="container">
				<div class="navy">
					<ul>
						<!-- Main menu -->
						<li><a href="#">Home</a>
							<!-- Submenu -->
							<ul>

								<li><a href="index">Home 1</a></li>
								<li><a href="index-2"><span>Home 2</span></a></li>
								<li><a href="index-3"><span>Home 3</span></a></li>

							</ul>
						</li>

						<li><a href="#">Features</a>
							<ul>
								<li><a href="#">Footer</a>
									<ul>
										<li><a href="footer-one">Footer1</a></li>
										<li><a href="footer-two">Footer2</a></li>
										<li><a href="footer-three">Footer3</a></li>
									</ul>
								</li>
								<li><a href="#">Price Table</a>
									<ul>
										<li><a href="price-table-one">Price Table1</a></li>
										<li><a href="price-table-two">Price Table2</a></li>

									</ul>
								</li>

							</ul>
						</li>

						<li><a href="#">Category</a>
							<ul>
								<li><a href="#">Laptop</a>
									<ul>
										<li><a href="#">Vaio</a></li>
										<li><a href="#">Samsung</a></li>
										<li><a href="#">Toshiba</a></li>
										<li><a href="#">HP</a></li>

									</ul>
								</li>
								<li><a href="#">Smartphone</a>
									<ul>
										<li><a href="#">Iphone</a></li>
										<li><a href="#">Oppo</a></li>
										<li><a href="#">Nokia</a></li>
										<li><a href="#">Sony</a></li>
										<li><a href="#">Samsung</a></li>

									</ul>
								</li>
								<li><a href="#">Accessories</a>
									<ul>
										<li><a href="#">Headphone</a></li>
										<li><a href="#">Adapter</a></li>
										<li><a href="#">Bag</a></li>
										<li><a href="#">Baby doll</a></li>

									</ul>
								</li>
								<!-- Multi level menu -->
								<li><a href="#">Multi Level Menu</a>
									<ul>
										<!-- Sub menu -->
										<li><a href="#">Menu #1</a></li>
										<li><a href="#">Menu #1</a></li>
										<li><a href="#">Menu #1</a>
											<ul>
												<!-- Sub menu -->
												<li><a href="#">Menu #2</a></li>
												<li><a href="#">Menu #2</a></li>
												<li><a href="#">Menu #2</a>
													<ul>
														<!-- Sub menu -->
														<li><a href="#">Menu #3</a></li>
														<li><a href="#">Menu #3</a></li>
														<li><a href="#">Menu #3</a></li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>

						<li><a href="#">Blog</a>
							<ul>
								<li><a href="blog"><span>Blog Default</span></a></li>
								<li><a href="blog-masonry"><span>Blog Masonry</span></a></li>
								<li><a href="blog-full-width"><span>Blog Full Width</span></a></li>
								<li><a href="single-post"><span>Single Page 1</span></a></li>
								<li><a href="single-post-v2"><span>Single Page 2</span></a></li>
							</ul>
						</li>

						<li><a href="#">Pages</a>
							<ul>
								<li><a href="shop"><span>Shop</span></a></li>
								<li><a href="single-product"><span>Single product</span></a></li>
								<li><a href="shopping-cart"><span>Cart</span></a></li>
								<li><a href="checkout"><span>Checkout</span></a></li>
								<li><a href="wishlist"><span>Wishlist</span></a></li>
								<li><a href="signin"><span>Sign In</span></a></li>
								<li><a href="signup"><span>Sign Up</span></a></li>
								<li><a href="404"><span>404 Page</span></a></li>
							</ul>
						</li>

						<li><a href="about">About Us</a></li>
						<li><a href="contact">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Navigation ends -->

	</div>

	<!-- Header one ends -->

</header>
<!-- end header -->

<!-- start main content -->
<main class="main-container ptb-40">

	<div class="container">
		<!-- blog content -->
		<div class="contentpanel">

			<div class="row blog-content">
				<div class="col-sm-9">

					<div class="panel panel-default panel-blog">
						<div class="panel-body-content">
							<h3 class="blogsingle-title">Getting Started With Film Photography</h3>

							<ul class="blog-meta">
								<li>By: <a href="#">John Doe</a></li>
								<li>Jan 02, 2016</li>
								<li><a href="#">2 Comments</a></li>
							</ul>

							<br />
							<div class="blog-img"><img src="img/blog/blog-01.jpg" class="img-responsive" alt="" /></div>
							<div class="mb20"></div>

							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
							<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
							<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>

						</div><!-- panel-body -->
					</div><!-- panel -->

					<div class="authorpanel">
						<div class="media">
							<a class="pull-left" href="#">
								<img class="media-object thumbnail" src="img/photos/userprofile.png" alt="" />
							</a>
							<div class="media-body event-body">
								<h4 class="subtitle">About The Author</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
						</div><!-- media -->
					</div><!-- authorpanel -->

					<div class="mb30"></div>
					<h5 class="subtitle">5 Comments</h5>
					<div class="mb30"></div>

					<ul class="media-list comment-list">

						<li class="media">
							<a class="pull-left" href="#">
								<img class="media-object thumbnail" src="img/photos/user1.png" alt="" />
							</a>
							<div class="media-body">
								<a href="#" class="btn btn-primary btn-xs pull-right reply">Reply</a>
								<h4>Nusja Nawancali</h4>
								<small class="text-muted">January 10, 2014 at 7:30am</small>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

								<div class="media">
									<a class="pull-left" href="#">
										<img class="media-object thumbnail" src="img/photos/userprofile.png" alt="" />
									</a>
									<div class="media-body">
										<a href="#" class="btn btn-primary btn-xs pull-right reply">Reply</a>
										<h4>Eileen Sideways</h4>
										<small class="text-muted">January 10, 2014 at 7:30am</small>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

										<div class="media">
											<a class="pull-left" href="#">
												<img class="media-object thumbnail" src="img/photos/user3.png" alt="" />
											</a>
											<div class="media-body">
												<a href="#" class="btn btn-primary btn-xs pull-right reply">Reply</a>
												<h4>Zaham Sindilmaca</h4>
												<small class="text-muted">January 10, 2014 at 7:30am</small>
												<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
											</div>
										</div><!-- media -->

									</div><!-- media-body -->
								</div><!-- media -->

								<div class="media">
									<a class="pull-left" href="#">
										<img class="media-object thumbnail" src="img/photos/user2.png" alt="" />
									</a>
									<div class="media-body">
										<a href="#" class="btn btn-primary btn-xs pull-right reply">Reply</a>
										<h4>Ray Sin</h4>
										<small class="text-muted">January 10, 2014 at 7:30am</small>
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
									</div>
								</div><!-- media -->

							</div><!-- media-body -->

						</li><!-- media -->

						<li class="media">
							<a class="pull-left" href="#">
								<img class="media-object thumbnail" src="img/photos/user1.png" alt="" />
							</a>
							<div class="media-body">
								<a href="#" class="btn btn-primary btn-xs pull-right reply">Reply</a>
								<h4>Nusja Nawancali</h4>
								<small class="text-muted">January 10, 2014 at 7:30am</small>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
							</div>
						</li><!-- media -->

						<li class="media">
							<a class="pull-left" href="#">
								<img class="media-object thumbnail" src="img/photos/user4.png" alt="" />
							</a>
							<div class="media-body">
								<a href="#" class="btn btn-primary btn-xs pull-right reply">Reply</a>
								<h4>Weno Carasbong</h4>
								<small class="text-muted">January 10, 2014 at 7:30am</small>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

								<div class="media">
									<a class="pull-left" href="#">
										<img class="media-object thumbnail" src="img/photos/user3.png" alt="" />
									</a>
									<div class="media-body">
										<a href="#" class="btn btn-primary btn-xs pull-right reply">Reply</a>
										<h4>Zaham Sindilmaca</h4>
										<small class="text-muted">January 10, 2014 at 7:30am</small>
										<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
									</div>
								</div><!-- media -->

							</div>
						</li><!-- media -->

					</ul><!-- comment-list -->

					<div class="mb30"></div>
					<h5 class="subtitle mb5">Leave A Comment</h5>
					<p class="text-muted">Your email address will not be published.</p>
					<div class="mb20"></div>

					<form class="blog-content-form">
						<div class="row row-pad-5">
							<div class="col-lg-4">
								<input type="text" class="form-control" placeholder="Name" name="name">
							</div>
							<div class="col-lg-4">
								<input type="email" class="form-control" placeholder="Email" name="email">
							</div>
							<div class="col-lg-4">
								<input type="url" class="form-control" placeholder="Website" name="website">
							</div>
						</div><!-- row -->
						<div class="row">
							<div class="col-md-12">
								<textarea placeholder="Message" rows="5" class="form-control"></textarea>
							</div>
						</div>

						<div class="mb10"></div>
						<button class="btn btn-primary">Add Comment</button>
					</form>

				</div><!-- col-sm-8 -->

				<div class="col-sm-3">
					<div class="blog-sidebar">

						<h5 class="subtitle">Text Widget</h5>
						<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam</p>

						<div class="mb30"></div>

						<h5 class="subtitle">Categories</h5>
						<ul class="sidebar-list">
							<li><a href="#"><i class="fa fa-angle-right"></i> Science &amp; Technology</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> Food &amp; Health</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> Entertainment</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> Web Development</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> Communication</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> Movies &amp; TV Shows</a></li>
						</ul>

						<div class="mb30"></div>

						<h5 class="subtitle">Archives</h5>
						<ul class="sidebar-list">
							<li><a href="#"><i class="fa fa-angle-right"></i> January 2014</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> December 2013</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> November 2013</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> October 2013</a></li>
							<li><a href="#"><i class="fa fa-angle-right"></i> September 2013</a></li>
						</ul>

					</div><!-- blog-sidebar -->

				</div><!-- col-sm-4 -->

			</div><!-- row -->

		</div><!-- contentpanel -->
		<!-- end blog content -->
	</div>



</main>
<!-- end main content -->

<!-- start footer area -->
<footer class="footer-area-content">

	<div class="container">
		<div class="footer-wrapper style-3">
			<div class="type-1">
				<div class="footer-columns-entry">
					<div class="row">
						<div class="col-md-3">
							<img alt="" src="img/footer-logo.png" class="footer-logo">
							<div class="footer-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</div>
							<div class="footer-address">30 South Avenue San Francisco<br> Phone: +78 123 456 123<br> Email: <a href="mailto:Support@demo.com">Support@demo.com</a><br>
								<a target="_blank" href="http://iglyphic.com/"><b>www.lookcare.com</b></a>
							</div>
							<div class="clear"></div>
						</div>
						<div class="col-md-2 col-sm-4">
							<h3 class="column-title">Customer Care</h3>
							<ul class="column">
								<li><a href="#">Terms & Condition</a></li>
								<li><a href="#">Contact Us</a></li>
								<li><a href="#">Shipping Charge</a></li>
								<li><a href="#">Shipping Track</a></li>
								<li><a href="#">Payment Method</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Returns</a></li>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="col-md-2 col-sm-4">
							<h3 class="column-title">Your Account</h3>
							<ul class="column">
								<li><a href="#">My Account</a></li>
								<li><a href="#">Wishlist</a></li>
								<li><a href="#">Affiliate Dashboard</a></li>
								<li><a href="#">Billing Address</a></li>
								<li><a href="#">Cancel Order</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Returns</a></li>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="col-md-2 col-sm-4">
							<h3 class="column-title">Shop Information</h3>
							<ul class="column">
								<li><a href="#">About Company</a></li>
								<li><a href="#">Become Member</a></li>
								<li><a href="#">License Details</a></li>
								<li><a href="#">Custom Service</a></li>
								<li><a href="#">Tax Information</a></li>
								<li><a href="#">Order History</a></li>
								<li><a href="#">Job & Vacancies</a></li>
							</ul>
							<div class="clear"></div>
						</div>
						<div class="clearfix visible-sm-block"></div>
						<div class="col-md-3">
							<h3 class="column-title">Company working hours</h3>
							<div class="footer-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</div>
							<div class="footer-description">
								<b>Monday-Friday:</b> 8.30 a.m. - 5.30 p.m.<br>
								<b>Saturday:</b> 9.00 a.m. - 2.00 p.m.<br>
								<b>Sunday:</b> Closed
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<div class="footer-bottom footer-wrapper style-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="footer-bottom-navigation">
						<div class="cell-view">
							<div class="footer-links">
								<a href="#">Site Map</a>
								<a href="#">Search</a>
								<a href="#">Terms</a>
								<a href="#">Advanced Search</a>
								<a href="#">Orders and Returns</a>
								<a href="#">Contact Us</a>
							</div>
							<div class="copyright">Created with by <a target="_blank" href="http://iglyphic.com/">iGlyphic</a> . All right reserved</div>
						</div>
						<div class="cell-view">
							<div class="payment-methods">
								<a href="#"><img alt="" src="img/payment-method-1.png"></a>
								<a href="#"><img alt="" src="img/payment-method-2.png"></a>
								<a href="#"><img alt="" src="img/payment-method-3.png"></a>
								<a href="#"><img alt="" src="img/payment-method-4.png"></a>
								<a href="#"><img alt="" src="img/payment-method-5.png"></a>
								<a href="#"><img alt="" src="img/payment-method-6.png"></a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>



</footer>
<!-- footer area end -->


<!-- All Script -->
<script src="js/vendor/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<!-- Scroll up js
============================================ -->
<script src="js/jquery.scrollUp.js"></script>
<script src="js/menu.js"></script>

<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>


</html>