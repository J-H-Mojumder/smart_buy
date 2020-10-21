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
		$output = "";
		//print_r($data);
		for ($i=0; $i < sizeof($data); $i++) 
		{
			if ($data[$i][1] != 0) 
			{
				$sql = "SELECT * FROM coles WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM woolworths WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM aldi WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."'";
				// echo "SESSION";
				// echo $sql;
				$result = mysqli_query($db->conn,$sql);
				$out = mysqli_fetch_assoc($result);
				
				if (trim($out['Shop_Name']) == 'Woolworths') 
				{
					$output .= "<li>".$out['Product_Name']."</li><span style='display: none;'>".$out['Product_ID']."</span>";
				}
			}
		}
		echo $output;
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

		//var_dump($data);

		include_once "database.php";
		$db = new database();
		$sum = 0;
		$output = "";
		for ($i=0; $i < sizeof($data); $i++) 
		{
			if ($data[$i][1] != 0) 
			{
				$sql = "SELECT * FROM coles WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM woolworths WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM aldi WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."'";

				$result = mysqli_query($db->conn,$sql);
				$out = mysqli_fetch_assoc($result);
				
				if (trim($out['Shop_Name']) == 'Woolworths') 
				{
					$output .= "<li>".$out['Product_Name']."</li><span style='display: none;'>".$out['Product_ID']."</span>";
				}
			}
		}
		echo $output;
	}
?>