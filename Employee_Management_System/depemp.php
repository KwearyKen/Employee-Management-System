<?php

require_once ('process/dbh.php');
$sql = "SELECT * FROM `employee` join `department` WHERE 1";

//echo "$sql";
$result = mysqli_query($conn, $sql);

?>

<html>
<head>
	<title>Department Employees |  Admin Panel | Employee Management System</title>
	<link rel="stylesheet" type="text/css" href="styleview.css">
</head>
<body>
	<header>
		<nav>
			<h1>Employee Management System</h1>
			<ul id="navli">
				<li><a class="homeblack" href="aloginwel.php">HOME</a></li>
				<li><a class="homeblue" href="department.php">Departments</a></li>
				<li><a class="homeblack" href="alogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="divider"></div>
		<table>
			<tr>
				<th align = "center">Emp. ID</th>
				<th align = "center">Name</th>
				<th align = "center">Job. ID</th>
			</tr>

			<?php					
				$Did = (isset($_GET['id']) ? $_GET['id'] : '');
				$sql = "SELECT * from `employee` WHERE employee.dID=$Did";
				$result = mysqli_query($conn, $sql);
				if($result){
					while($res = mysqli_fetch_assoc($result)){
						$id = $res['id'];
						$firstname = $res['firstName'];
						$lastname = $res['lastName'];
						$WorkID = $res['WorkID'];
						echo "<tr>";
						echo "<td>".$id."</td>";
						echo "<td>".$firstname." ".$lastname."</td>";
						echo "<td>".$WorkID."</td>";
						}
					}
			?>
		</table>

</body>
</html>