<body>
<form id="product_add_form" method="POST">
	<table class="table table-dark mt-4">
		<tr>
	    	<td ><p><span id="add_to_list_name"><?=$_POST['name']?></span></p></td>
	        <td>
	        	<input id="add_to_list_amount" class="amount btn-outline-info" type="number" placeholder="Amount">
	        </td>
	        <td>
	        	<div class="dropdown">
	                <input id="add_to_list_unit" type="button" class="btn btn-sm btn-outline-info dropdown-toggle" data-toggle="dropdown" name="unit" value="<?=$_POST['unit']?>"></input>
	                <div class="dropdown-menu bg-dark">
	                    <a class="dropdown-item" href="#"></a>
	                </div>
	            </div>
	        </td>
	        <td>
	        	<input id="add_to_list" type="submit" class="btn btn-sm btn-outline-info"  value="Add to list"></input>
	        </td>
	        <td style="display: none;">
	        	<span id="add_to_list_id"><?=$_POST['id']?></span>
	        </td>
	    </tr>
	</table>
</form>
</body>