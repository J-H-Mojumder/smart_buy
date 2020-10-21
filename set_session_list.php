<?php
	if (session_status() == PHP_SESSION_NONE) 
	{
    	session_start();
    	if (isset($_POST['data']) && count($_POST['data']) > 0) 
		{
			$data = $_POST['data'];
			for ($i=0; $i < sizeof($data); $i++) 
			{ 
				$data[$i][0] = (int)$data[$i][0]; //ID
				$data[$i][1] = (double)$data[$i][1]; //amount
				$data[$i][2] =	$data[$i][2]; //name
			}
			if (isset($_SESSION["user_id"]) && $_SESSION["user_name"]) 
			{
				$_SESSION['list'] = $data;
			}
			//$_SESSION['list'] = $data;
			echo json_encode($_SESSION['list']);
		}
		else
		{
			echo json_encode($_SESSION['list']);
			//echo "ACCESS DENIED!!";
		}
	}
?>