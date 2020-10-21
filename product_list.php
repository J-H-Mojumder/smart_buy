<?php
	if (isset($_SESSION['user_id']) && isset($_SESSION['list'])) 
	{
		//echo $_SESSION['user_id'];
		$data = $_SESSION['list'];
		for ($i=0; $i < sizeof($data); $i++) 
		{ 
			$data[$i][0] = (int)$data[$i][0]; //ID
			$data[$i][1] = (int)$data[$i][1]; //amount
			$data[$i][2] =	$data[$i][2]; //name
		}
		//$id = doubleval()
		include "database.php";
		$db = new database();
		for ($i=0; $i < sizeof($data); $i++) 
		{ 
			$sql = "SELECT * FROM coles WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM woolworths WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM aldi WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."'";
			$result = mysqli_query($db->conn,$sql);
			$out[$i] = mysqli_fetch_assoc($result);
			
			$cost = ((double)$out[$i]['Price'])*($data[$i][1]);
			//$str = "$".$out['Price']." * ".$_POST['amount']."= ";
			$str_cost = "$".$cost;
			$out[$i]['amount'] = $data[$i][1];
			$out[$i]['cost'] = $str_cost;
		}
		for ($i=0; $i < sizeof($out); $i++) 
		{	
			if ($out[$i]['amount'] == "") 
			{
				continue;
			}
			?>
			<tr id="row<?=$out[$i]['Product_ID']?>" class="rows">
				<td>
					<p><span id="product_list_name<?=$out[$i]['Product_ID']?>"><?=$out[$i]['Product_Name']?></span></p>
				</td>
			    <td>
			    	<input  class="amount disable_scrolling btn-outline-info" type="number" min="0" placeholder="<?=$out[$i]['amount']?>" readonly>
			    </td>
			    <td>
			    	<div class="dropdown">
			            <button type="button" class="btn btn-sm btn-outline-info dropdown-toggle" data-toggle="dropdown">
			                <?=$out[$i]['Unit']?>
			            </button>
			        </div>
			    </td>
			    <td>
			    	<input id="cost<?=$out[$i]['Product_ID']?>" class="amount disable_scrolling btn-outline-info" type="number" min="0" placeholder="<?=$out[$i]['cost']?>" readonly>
		        </td>
			    <td>
			    	<button data-id="<?=$out[$i]['Product_ID']?>" data-unit="<?=$out[$i]['Unit']?>" id="product_list_edit<?=$out[$i]['Product_ID']?>" class="btn btn-sm btn-outline-success">Edit</button>
			    </td>
			    <td>
			    	<button data-id="<?=$out[$i]['Product_ID']?>" id="product_list_remove<?=$out[$i]['Product_ID']?>" class="btn btn-sm btn-outline-danger">Remove</button>
			    </td>
			    <td style="display: none;">
		        	<span id="product_list_id"><?=$out[$i]['Product_ID']?></span>
		        </td>
			</tr>
	<?php   } ?>
	<?php   }
	elseif(isset($_POST['data']))
	{
		$data = $_POST['data'];
		for ($i=0; $i < sizeof($data); $i++) 
		{ 
			$data[$i][0] = (int)$data[$i][0]; //ID
			$data[$i][1] = (int)$data[$i][1]; //amount
			$data[$i][2] =	$data[$i][2]; //name
		}
		//$id = doubleval()
		include_once "database.php";
		$db = new database();
		for ($i=0; $i < sizeof($data); $i++) 
		{ 
			$sql = "SELECT * FROM coles WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM woolworths WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."' UNION ALL SELECT * FROM aldi WHERE Product_ID = ".$data[$i][0]." AND Product_Name = '".mysqli_real_escape_string($db->conn , trim($data[$i][2]))."'";
			$result = mysqli_query($db->conn,$sql);
			$out[$i] = mysqli_fetch_assoc($result);
			
			$cost = ((double)$out[$i]['Price'])*($data[$i][1]);
			//$str = "$".$out['Price']." * ".$_POST['amount']."= ";
			$str_cost = "$".$cost;
			$out[$i]['amount'] = $data[$i][1];
			$out[$i]['cost'] = $str_cost;
		}

		for ($i=0; $i < sizeof($out); $i++) 
		{
			if ($out[$i]['amount'] == "") 
			{
				continue;
			}
			?>
			<tr id="row<?=$out[$i]['Product_ID']?>" class="rows">
				<td>
					<p><span id="product_list_name<?=$out[$i]['Product_ID']?>"><?=$out[$i]['Product_Name']?></span></p>
				</td>
			    <td>
			    	<input  class="amount disable_scrolling btn-outline-info" type="number" min="0" placeholder="<?=$out[$i]['amount']?>" readonly>
			    </td>
			    <td>
			    	<div class="dropdown">
			            <button type="button" class="btn btn-sm btn-outline-info dropdown-toggle" data-toggle="dropdown">
			                <?=$out[$i]['Unit']?>
			            </button>
			        </div>
			    </td>
			    <td>
			    	<input id="cost<?=$out[$i]['Product_ID']?>" class="amount disable_scrolling btn-outline-info" type="number" min="0" placeholder="<?=$out[$i]['cost']?>" readonly>
		        </td>
			    <td>
			    	<button data-id="<?=$out[$i]['Product_ID']?>" data-unit="<?=$out[$i]['Unit']?>" id="product_list_edit<?=$out[$i]['Product_ID']?>" class="btn btn-sm btn-outline-success">Edit</button>
			    </td>
			    <td>
			    	<button data-id="<?=$out[$i]['Product_ID']?>" id="product_list_remove<?=$out[$i]['Product_ID']?>" class="btn btn-sm btn-outline-danger">Remove</button>
			    </td>
			    <td style="display: none;">
		        	<span id="product_list_id"><?=$out[$i]['Product_ID']?></span>
		        </td>
			</tr>
	<?php   }?>
<?php
} ?>