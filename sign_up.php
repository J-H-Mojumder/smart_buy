<?php
	if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['contact']) && isset($_POST['address']) && isset($_POST['pass'])) 
	{
		include_once "database.php";
		//session_start();
		$db = new database();
		if ($_POST['name'] != "" && $_POST['email'] != "" && $_POST['contact'] != "" && $_POST['address'] != "" && $_POST['pass'] != "")
		{
			$sql = "INSERT INTO users (user_name, user_email, user_pass, user_contact_number, user_address) VALUES ('".mysqli_real_escape_string($db->conn , trim($_POST['name']))."','".mysqli_real_escape_string($db->conn , trim($_POST['email']))."','".mysqli_real_escape_string($db->conn , trim($_POST['pass']))."','".mysqli_real_escape_string($db->conn , trim($_POST['contact']))."','".mysqli_real_escape_string($db->conn , trim($_POST['address']))."')";
			//echo $sql;
			$result = mysqli_query($db->conn,$sql);

			// $db = new database();
			// $sql = "SELECT * FROM users WHERE user_email = '".mysqli_real_escape_string($db->conn , trim($_POST['email']))."' AND user_pass = '".mysqli_real_escape_string($db->conn , trim($_POST['pass']))."'";
			// $result = mysqli_query($db->conn,$sql);
			// $out = mysqli_fetch_assoc($result);
			// $_SESSION['user_id'] = $out['user_id'];
			// $_SESSION['user_name'] = $out['user_name'];
			 echo "reload";
			//echo "<span style='color: green'>Welcome ".$out['user_name']."</span>";
		} 
		else
		{
			echo "<span style='color: red'>all fields are required</span>";
		}
	}
	else
	{
		echo "<span style='color: red'><b>Don't try to play smart</span>";
	}
?>