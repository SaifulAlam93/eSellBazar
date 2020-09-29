<%-- 
    Document   : ui-typography
    Created on : Aug 5, 2020, 9:08:46 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Web UI Kit &amp; Dashboard Template based on Bootstrap">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, web ui kit, dashboard template, admin template">

	<link rel="shortcut icon" href="dcss/img/icons/icon-48x48.png" />

	<title>Typography | AdminKit Demo</title>

	<link href="dcss/cssapp.css" rel="stylesheet">
</head>

<body>
	 <div class="wrapper">
            
            
            <%@ include file='./sidebar/saidbar.jsp'%>
            
            
            
            
            <div class="main">
                
            <%@ include file='./sidebar/navbar.jsp'%>
                
                
                
                <main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">Typography</h1>

					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Headings</h5>
									<h6 class="card-subtitle text-muted">All HTML headings, <code>&lt;h1&gt;</code> through <code>&lt;h6&gt;</code>, are available.</h6>
								</div>
								<div class="card-body">
									<h1>This is a heading h1</h1>
									<p class="text-muted">Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit
										vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero.</p>
									<h2>This is a heading h2</h2>
									<p class="text-muted">Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit
										vel, luctus pulvinar, hendrerit id, lorem.</p>
									<h3>This is a heading h3</h3>
									<p class="text-muted">Etiam rhoncus. Maecenas tempus, tellus condimentum rhoncus, sem quam libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, vel.</p>
									<h4>This is a heading h4</h4>
									<p class="text-muted">Etiam rhoncus. Maecenas tempus, tellus condimentum rhoncus, sem quam libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, vel.</p>
									<h5>This is a heading h5</h5>
									<p class="text-muted">Sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel.</p>
									<h6>This is a heading h6</h6>
									<p class="text-muted">Sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel.</p>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Coloured text</h5>
									<h6 class="card-subtitle text-muted">Contextual text classes.</h6>
								</div>
								<div class="card-body">
									<p class="text-primary">This line of text contains the text-primary class.</p>
									<p class="text-secondary">This line of text contains the text-secondary class.</p>
									<p class="text-success">This line of text contains the text-success class.</p>
									<p class="text-danger">This line of text contains the text-danger class.</p>
									<p class="text-warning">This line of text contains the text-warning class.</p>
									<p class="text-info">This line of text contains the text-info class.</p>
								</div>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Inline text</h5>
									<h6 class="card-subtitle text-muted">Styling for common inline HTML5 elements.</h6>
								</div>
								<div class="card-body">
									<p>You can use the mark-tag to <mark>highlight</mark> text.</p>
									<p><del>This line of text can be treated as deleted text.</del></p>
									<p><ins>This line of text can be treated as an addition to the document.</ins></p>
									<p><strong>Bold text using the strong-tag</strong></p>
									<p><em>Italicized text using the em-tag</em></p>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<h5 class="card-title">Blockquotes</h5>
									<h6 class="card-subtitle text-muted">For quoting blocks of content from another source within your document.</h6>
								</div>
								<div class="card-body">
									<blockquote>
										<p>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.
										</p>
										<footer>
											Someone famous in <cite title="Source Title">Source Title</cite>
										</footer>
									</blockquote>
									<p class="text-muted m-b-15 m-t-20 font-13">
										Add <code>.blockquote-reverse</code> for a blockquote with right-aligned content.
									</p>
									<blockquote class="blockquote-reverse m-b-0">
										<p>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.
										</p>
										<footer>
											Someone famous in <cite title="Source Title">Source Title</cite>
										</footer>
									</blockquote>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<h5 class="card-title">List unordered</h5>
									<h6 class="card-subtitle text-muted">The unordered list items will are marked with bullets.</h6>
								</div>
								<div class="card-body">
									<ul>
										<li>
											Lorem ipsum dolor sit amet
										</li>
										<li>
											Consectetur adipiscing elit
										</li>
										<li>
											Nulla volutpat aliquam velit
										</li>
										<li>
											Phasellus iaculis neque
										</li>
										<li>
											Eget porttitor lorem
										</li>
									</ul>
								</div>
							</div>

							<div class="card">
								<div class="card-header">
									<h5 class="card-title">List ordered</h5>
									<h6 class="card-subtitle text-muted">The ordered list items will are marked with numbers.</h6>
								</div>
								<div class="card-body">
									<ol>
										<li>
											Lorem ipsum dolor sit amet
										</li>
										<li>
											Consectetur adipiscing elit
										</li>
										<li>
											Nulla volutpat aliquam velit
										</li>
										<li>
											Phasellus iaculis neque
										</li>
										<li>
											Eget porttitor lorem
										</li>
									</ol>
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-left">
							<p class="mb-0">
								<a href="index.html" class="text-muted"><strong>AdminKit Demo</strong></a> &copy;
							</p>
						</div>
						<div class="col-6 text-right">
							<ul class="list-inline">
								<li class="list-inline-item">
									<a class="text-muted" href="#">Support</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Help Center</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Privacy</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Terms</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

<!--	<script src="dcss/js /vendor.js"></script>-->
	<script src="dcss/js/app.js"></script>

</body>

</html>