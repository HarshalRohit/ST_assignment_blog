<html>
<head>
</head>
<body>

<?php
	require 'connect_to_db.php';
	$name = mysql_real_escape_string($_POST["name"]);
	$email = mysql_real_escape_string($_POST["email"]);
	$subject = mysql_real_escape_string($_POST["subject"]);
	
	$sql = "INSERT INTO contact_form (name, email,subject) values('{$name}','{$email}','{$subject}')";
		
	if(mysqli_query($conn,$sql)){
		/*echo '<script>';
		echo 'alert("Succesfully Completed");';
		echo 'window.loction = "home_page.php";';
		echo '</script>';*/
		header('Location: home_page.php');
	}

?>
</body>
</html>