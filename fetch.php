<?php 
	if (!empty($_POST['q'])) 
	{
		include "database.php";
		$db = new database();//open database connection
		$q = $_POST['q'];
		$output = '<table class="table table-striped table-dark" id="table">';
		//checking if the input is onlu blank spaces
		$check = trim($q," ");
		//modifying the clone input ($check) into alphanumeric by removing in between spaces in zeros
		$check = str_replace(" ","0",$check); 

		if(ctype_alnum ($check)) //check if value is alphanumeric
		{
			//More than one words in the input
			if (strstr($q, ' ')) //finding out if there is in between spaces
			{
				$Product_Names = explode(" ", $q); //segmenting the input word bu word
				$item = $Product_Names[0];
				
				$mother_query = "";

				$query = "SELECT * FROM woolworths WHERE Product_Name LIKE '%".$item."%'";
				$mother_query .= $query." UNION ALL "; 
				
				$query1 = "SELECT * FROM aldi WHERE Product_Name LIKE '%".$item."%'";
				$mother_query .= $query1." UNION ALL ";
				
				$query2 = "SELECT * FROM coles WHERE Product_Name LIKE '%".$item."%'";
				$mother_query .= $query2;
				
				$count = 1;
				while($count < sizeof($Product_Names))
				{	
					$mother_query = "";
					$item = $Product_Names[$count];

					$query = $query." AND Product_Name LIKE '%".$item."%' ";
					$mother_query .= $query." UNION ALL ";
					
					$query1 = $query1." AND Product_Name LIKE '%".$item."%' ";
					$mother_query .= $query1." UNION ALL ";
					
					$query2 = $query2." AND Product_Name LIKE '%".$item."%' ";
					$mother_query .= $query2;
					
					$count++;
				}
				$query = $query." ORDER BY Price ASC";
				$query1 = $query1." ORDER BY Price ASC";
				$query2 = $query2." ORDER BY Price ASC";
				
				$mother_query = $mother_query."ORDER BY Price ASC"; 

				//echo $mother_query;

				$result3 = mysqli_query($db->conn,$mother_query);

				while ($out=mysqli_fetch_assoc($result3)) 
				{
					//echo '<a>'.$out['Product_Name'].'</a><br>';
					$output .= '<tr class="list" ><td>'.$out['Product_Name']."</td><td>$".$out['Price'].'</td><td>'.$out['Shop_Name'].'</td><td>'.$out['Unit_Price'].'</td><td style="display:none;"> '.$out['Product_ID'].'</td><td style="display:none;"> '.$out['Unit'].'</td></tr>';
				}
				// while ($out=mysqli_fetch_assoc($result1)) 
				// {
				// 	//echo '<a>'.$out['Product_Name'].'</a><br>';
				// 	$output .= '<tr ><td class="list">'.$out['Product_Name']."</td><td>$".$out['Price'].'</td><td>aldi</td><td>'.$out['Unit_Price'].'</td></tr>';
				// }
				// while ($out=mysqli_fetch_assoc($result2)) 
				// {
				// 	//echo '<a>'.$out['Product_Name'].'</a><br>';
				// 	$output .= '<tr ><td class="list">'.$out['Product_Name']."</td><td>$".$out['Price'].'</td><td>coles</td><td>'.$out['Unit_Price'].'</td></tr>';
				// }
			}
			else
			{
				$mother_query = "";
				// ORDER BY Price ASC
				//only one word in the input
				$query = "SELECT * FROM woolworths WHERE Product_Name LIKE '%".$q."%' ";
				$mother_query .= $query." UNION ALL ";

				$query1 = "SELECT * FROM aldi WHERE Product_Name LIKE '%".$q."%' ";
				$mother_query .= $query1." UNION ALL ";

				$query2 = "SELECT * FROM coles WHERE Product_Name LIKE '%".$q."%' ";
				$mother_query .= $query2;
				$mother_query .= " ORDER BY Price ASC";

				//echo $mother_query;

				$result3 = mysqli_query($db->conn,$mother_query);

				while ($out=mysqli_fetch_assoc($result3)) 
				{
					$output .= '<tr class="list" ><td>'.$out['Product_Name']."</td><td>$".$out['Price'].'</td><td>'.$out['Shop_Name'].'</td><td>'.$out['Unit_Price'].'</td><td style="display:none;"> '.$out['Product_ID'].'</td><td style="display:none;"> '.$out['Unit'].'</td></tr>';
				}
			}
		}
		else
		{
			$output .= '<li>Input should be numbers or letters!!!</li>';
		}
		$output .= '</table>';
		echo $output;
	}	
 ?>