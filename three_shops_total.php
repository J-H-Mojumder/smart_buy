<?php
	if (isset($_SESSION['user_id'])) 
	{
		if (isset($_SESSION['list'])) 
			{
				$data = $_SESSION['list'];
			}
			else
			{
				$data = [];
			}
			//$data = $_SESSION['list'];
		//0 = ID ---- 1 = amount ----- 2= name
		for ($i=0; $i < sizeof($data); $i++) 
		{ 
			$data[$i][0] = (int)$data[$i][0]; //ID
			$data[$i][1] = (double)$data[$i][1]; //amount
			$data[$i][2] =	$data[$i][2]; //name
		}

		include_once "database.php";
		$db = new database();
		$sum = 0;
		for ($i=0; $i < sizeof($data); $i++) 
		{
			$sql = "SELECT * FROM coles WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM woolworths WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM aldi WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."'";

			//$sql .= " ORDER BY Price ASC";
			$result = mysqli_query($db->conn,$sql);
			$out = mysqli_fetch_assoc($result);
			$sum += $data[$i][1] * (double)$out['Price'];
		}
		echo "<h1><b>$".$sum;
	}
	else
	{
		$data = $_POST['data'];
		//0 = ID ---- 1 = amount ----- 2= name
		for ($i=0; $i < sizeof($data); $i++) 
		{ 
			$data[$i][0] = (int)$data[$i][0]; //ID
			$data[$i][1] = (double)$data[$i][1]; //amount
			$data[$i][2] =	$data[$i][2]; //name
		}

		include "database.php";
		$db = new database();
		$sum = 0;
		for ($i=0; $i < sizeof($data); $i++) 
		{
			$sql = "SELECT * FROM coles WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM woolworths WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM aldi WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."'";

			//$sql .= " ORDER BY Price ASC";
			$result = mysqli_query($db->conn,$sql);
			$out = mysqli_fetch_assoc($result);
			$sum += $data[$i][1] * (double)$out['Price'];
		}
		echo "<h1><b>$".$sum;
	}
	
?>