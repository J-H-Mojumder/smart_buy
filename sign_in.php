<?php  
	//echo $_POST['email'];
	//echo $_POST['pass'];
	if (isset($_POST['email']) && isset($_POST['pass'])) 
	{
		include_once "database.php";
		session_start();
		$db = new database();
		$sql = "SELECT * FROM users WHERE user_email = '".mysqli_real_escape_string($db->conn , trim($_POST['email']))."' AND user_pass = '".mysqli_real_escape_string($db->conn , trim($_POST['pass']))."'";
		
		$result = mysqli_query($db->conn,$sql);
		if ($result-> num_rows > 0) 
		{
			//echo "Oh yeas";
			$out = mysqli_fetch_assoc($result);
			//echo count($out);
			//print_r($out);
			if (count($out) > 1) 
			{	
				$_SESSION['user_id'] = $out['user_id'];
				$_SESSION['user_name'] = $out['user_name'];
				//echo "<span style='color: green'>Welcome ".$out['user_name']."</span>";
				echo "Welcome ".$_SESSION['user_name'];
				//header('Location:index.php');
				//return;
			}
			else
			{
				echo "<span style='color: red'>Credential did not match!!</span>";
			}
		}
		else
		{
			//echo "<span style='color: red'>Credential did not match!!</span>";
			echo "Credential did not match!!";
		}	
	}
	else
	{
		echo "<span style='color: red'><b>Don't try to play smart</span>";
	}
?>