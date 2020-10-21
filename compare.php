<?php 
	if (isset($_POST["data"])) 
	{
		//echo $_SESSION['list'];
		$data = $_POST['data'];
		//$out_data  = [][];
		for ($i=0; $i < sizeof($data); $i++) 
		{ 
			$data[$i][0] = (int)$data[$i][0]; //ID
			$data[$i][1] = (double)$data[$i][1]; //amount
			$data[$i][2] =	$data[$i][2]; //name
		}
		include_once "database.php";
		?>
		<table class="table text-center mt-1 cheapest_price_table">
			<tr>
				<th>Your chosen product</th>
				<th>Price</th>
				<th>Shop</th>
				<th>Our suggestion</th>
				<th>Price</th>
				<th>Shop</th>
			</tr>
		<?php
		$db = new database();
		$sum = 0;
		$output = "";
		//print_r($data);
		for ($i=0; $i < sizeof($data); $i++) 
		{
			$keyword_number = 0;
			if ($data[$i][1] != 0) 
			{
				$sql = "SELECT * FROM coles WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM woolworths WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM aldi WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."'";
				$result = mysqli_query($db->conn,$sql);
				$out = mysqli_fetch_assoc($result);
				//echo sizeof($out);
				echo "<tr><td>".$out["Product_Name"]."</td><td>".$out["Price"]."</td><td>".$out["Shop_Name"]."</td>";
				$keywords = explode(" ", $out["Category"]);
				//echo $keywords[0]."\n";
				//echo $keywords[1]."\n";
				//echo $keywords[2]."\n";
				$prod_name = $out["Product_Name"];
				$prod_price = $out["Price"];
				foreach ($keywords as $key) 
				{
					$keyword_number++;
				}
				$sql = "SELECT * FROM `woolworths` WHERE Category LIKE '%".$keywords[0]."%'";
				for ($i=1; $i < $keyword_number-1; $i++) 
				{ 
					$sql .= " AND Category LIKE '%".$keywords[$i]."%'";
				}
				$result = mysqli_query($db->conn,$sql);
				$flag = 0;
				//$out_comp = mysqli_fetch_assoc($result);
				while ($out_comp=mysqli_fetch_assoc($result))
				{
					if ($out_comp["Price"] < $prod_price) 
					{
						echo "<td><span style='color:white'>".$out_comp["Product_Name"]."</td><td>".$out_comp["Price"]."</td><td>".$out["Shop_Name"]."</td></tr></span>";
						$flag = 1;
					}
					else
					{
						//echo "You have already chosen the best option of the market";
					}
				}
				if ($flag == 0) 
				{
					echo "<td colspan = 3><span style='color:green'>You have already chosen the best option of the market</span></td></tr>";
				}
				echo "<br>";
				//echo "<tr><td><span style='color : red;'>Triggered</span></td></tr>";
			}
		}
	}
	else
	{
		echo "<span style='color : red;'>No Products In The List</span>";
	}
?>
</table>