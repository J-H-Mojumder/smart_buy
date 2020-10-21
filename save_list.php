<?php
	session_start();
	if (isset($_POST['check']) && $_POST['check'] == "1") 
	{
		if (isset($_SESSION['user_id'])) 
		{
			echo "<span style='color: yellow'>Welcome</span>";
		}
		else
		{
			echo "<span style='color: red'>Please Login first to save the list!!</span>";
		}
	}
	else
	{
		echo "ACCESS DENIED!!";
	}
?>