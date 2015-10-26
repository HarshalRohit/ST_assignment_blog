<?php
// Start the session
session_start();
?>
<html>
<title>
</title>
<body>
	<?php

		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "blogdatabase";
		$blog_title = mysql_real_escape_string($_POST["blog_title"]);
		
		$blog_desc = mysql_real_escape_string($_POST["blog_desc"]);
		$blog_category = mysql_real_escape_string($_POST["blog_category"]);
		$blogger_id = $_SESSION["blogger_id"];
		$blogger_user_name = $_SESSION["blogger_user_name"];
		
		//$target_file =  $_FILES["fileToUpload"]["name"];
		//$imgi = $_FILES["fileToUpload"]["tmp_name"];
		
		// Create connection
		$conn = mysqli_connect($servername, $username, $password, $dbname);
		// Check connection
		if (!$conn) {
			die("Connection failed: " . mysqli_connect_error());
		} 
		//echo "Connected successfully";
		//move_uploaded_file($imgi,'images/'.$target_file);
		//$sql = "INSERT INTO blog_master (blog_title, blogger_id, blog_desc, blog_category,blog_author,blog_image, creation_date,updated_date) VALUES('{$blog_title}','{$blogger_id}','{$blog_desc}','{$blog_category}','{$blogger_user_name}','{$target_file}', NOW(),NOW())" ;
		$sql = "INSERT INTO blog_master (blog_title, blogger_id, blog_desc, blog_category,blog_author, creation_date,updated_date) VALUES('{$blog_title}','{$blogger_id}','{$blog_desc}','{$blog_category}','{$blogger_user_name}', NOW(),NOW())" ;
				
		//$result = mysqli_query($conn, $sql);
				
		if (mysqli_query($conn, $sql)){
			$sql = "UPDATE blogger_info SET blogger_updated_date = NOW() WHERE blogger_username = '{$blogger_user_name}'";
			if (mysqli_query($conn, $sql)){
				header('Location: home_page_blogger.php');
			}
		}
		else{
			echo "Error: " . $sql . "<br>" . mysqli_error($conn); 
		}
				
		mysqli_close($conn);
	?>
</body>
</html>