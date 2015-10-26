<?php
// Start the session
session_start();
?>
<?php 
		$blogger_user_name = $_SESSION["blogger_user_name"];
		$blog_id = $_SESSION['blog_id'];
		if(empty($_POST["blog_title"])){
			$blog_title = $_SESSION["blog_title"];
		} else{
			$blog_title = mysql_real_escape_string($_POST["blog_title"]);
		}
		if(empty($_POST["blog_desc"])){
			$blog_desc = $_SESSION["blog_desc"];
		} else{
			$blog_desc = mysql_real_escape_string($_POST["blog_desc"]);
		}
		if(empty($_POST["blog_category"])){
			$blog_category = $_SESSION["blog_category"];
		} else{
			$blog_category = mysql_real_escape_string($_POST["blog_category"]);
		}
		
		require 'connect_to_db.php';
		
		$sql = "UPDATE blog_master SET blog_title = '{$blog_title}', blog_desc = '{$blog_desc}', blog_category = '{$blog_category}',updated_date = NOW(),blog_is_active = 0 WHERE blog_id = '{$blog_id}' AND blog_author='{$blogger_user_name}'";
		
		if(mysqli_query($conn, $sql)){
			$sql = "UPDATE blogger_info SET blogger_updated_date = NOW() WHERE blogger_username = '{$blogger_user_name}'";
			if(mysqli_query($conn, $sql)){
				header('Location: home_page_blogger.php');
			}
		}
		 else {
			echo "Error updating record: " . mysqli_error($conn);
		}
		
		mysqli_close($conn);
	?>