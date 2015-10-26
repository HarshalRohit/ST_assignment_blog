<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Blog Home</title>

    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/blog-home.css" rel="stylesheet">

	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href="../css/navigation_bar.css" rel="stylesheet">
</head>
<body>

	<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="home_page.php">Home</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="contact_form.php">Contact Us!</a>
                    </li>
                </ul>
				
				<ul class="nav navbar-nav navbar-right">
				<li><p class="navbar-text">Already have an account?</p></li>
				<li class="dropdown">
				  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
					<ul id="login-dp" class="dropdown-menu">
						<li>
							 <div class="row">
									<div class="col-md-12">
										 <form class="form" role="form" method="post" action="login.php" accept-charset="UTF-8" id="login-nav">
												<div class="form-group">
													 <input type="text" class="form-control"name="username" placeholder="Username" required>
												</div>
												<div class="form-group">
													 <input type="password" class="form-control" name="password" placeholder="Password" required>
												</div>
												<div class="form-group">
													 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
												</div>
										 </form>
									</div>
									<div class="bottom text-center">
										New here ? <a href="Signup.html"><b>Join Us</b></a>
									</div>
							 </div>
						</li>
					</ul>
				</li>
			  </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	<?php
			
			require 'connect_to_db.php'; 
			//echo "Connected successfully";
			
			
			$sql = "SELECT blog_id, blog_title,blog_desc,blog_author, blog_category, creation_date,updated_date FROM blog_master WHERE blog_is_active = 1";
			
			
			$result = mysqli_query($conn, $sql);
			
			
			$blog_array = array();
			if (mysqli_num_rows($result)>0){
					while($row = mysqli_fetch_assoc($result)) {
						$blog_array[] = $row;
					}
			}
			else{
				echo 'No blog entries found';
			}
	?>
    <!-- Page Content -->
    <div class="container">

        <div class="row">
			<!-- Blog Entries Column -->
            <div class="col-md-*">
				<?php
					foreach($blog_array as $blog)
					{	
						echo '<h2>'.$blog['blog_title'].'</h2>';
						echo '<p class="lead">
								by <a href="blogger_info.php?var='.$blog['blog_author'].'" data-toggle="tooltip" title="Click Here to see '.$blog['blog_author'].'\'s profile">'.$blog['blog_author'].'</a>
							</p>';
						echo '<p>'.$blog['blog_desc'].'</p>';
						echo '<p>Category : '.$blog['blog_category'].'</p>';
						echo '<div class="row">
								<div class="col-md-6">
									<p><span class="glyphicon glyphicon-time"></span> Posted on '.$blog['creation_date'].'</p>
								</div>
								<div class="col-md-6">
									<p><span class="glyphicon glyphicon-time"></span> Updated on '.$blog['updated_date'].'</p>
								</div>
							</div><hr>';
					}
                ?>
            </div>
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../js/bootstrap.min.js"></script>
	
	<!--<script src="js/abc.js"></script>-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

</body>

</html>
