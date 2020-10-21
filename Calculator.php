<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Calculator</title>
</head>
<body>

	<form>
		<input type="text" name="num1" placeholder="Number 1">
		<select name="operator">
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type="text" name="num2" placeholder="Number 2">
		<button type="submit" name="submit" value="submit">=</button>
	</form>

	<?php
		if(isset($_GET['submit'])) {
			$result1 = $_GET['num1'];
			$result2 = $_GET['num2'];
			$operator = $_GET['operator'];
			switch($operator) {
				case '+':
					echo $result1 + $result2;
				break;
				case '-':
					echo $result1 - $result2;
				break;
				case '*':
					echo $result1 * $result2;
				break;
				case '/':
					echo $result1 / $result2;
				break;
			
			}
		}
	?>

</body>
</html>