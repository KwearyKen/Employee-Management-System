<?php
require_once ('process/dbh.php');
global $conn;

$F = $_POST["searchdata"];
$sq = "SELECT * FROM `employee` WHERE `id` = $F";

$Table = mysqli_query($conn, $sq);

?>

<html>
<head>
	<title>View Employee |  Admin Panel | Employee Management System</title>
	<link rel="stylesheet" type="text/css" href="styleview.css">
</head>
<body>
	<header>
		<nav>
			<h1>Employee Management System</h1>
			<ul id="navli">
				<li><a class="homeblack" href="aloginwel.php">HOME</a></li>
				<li><a class="homeblack" href="addemp.php">Add Employee</a></li>
				<li><a class="homeblue" href="viewemp.php">View Employee</a></li>
				<li><a class="homeblack" href="department.php">Departments</a></li>
				<li><a class="homeblack" href="assign.php">Assign Project</a></li>
				<li><a class="homeblack" href="assignproject.php">Project Status</a></li>
				<li><a class="homeblack" href="salaryemp.php">Salary Table</a></li>
				<li><a class="homeblack" href="empleave.php">Employee Leave</a></li>
				<li><a class="homeblack" href="alogin.html">Log Out</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="divider"></div>

	<div class="filter">
		<form action="empsearch.php" method="post">
		<input type="text" name="searchdata" placeholder="Value To Search"><br><br>
		<input type="submit" name="search" value="Submit"><br><br>
	</div>
		<table>
			<tr>

				<th align = "center">Emp. ID</th>
				<th align = "center">Picture</th>
				<th align = "center">Name</th>
				<th align = "center">Email</th>
				<th align = "center">Birthday</th>
				<th align = "center">Gender</th>
				<th align = "center">Contact</th>
				<th align = "center">NID</th>
				<th align = "center">Address</th>
				<th align = "center">JobID</th>
				<th align = "center">DepartmentID</th>
				<th align = "center">Degree</th>
				<th align = "center">Options</th>
			</tr>
					<?php
				while ($Row = mysqli_fetch_array($Table)) {
					echo "<tr>";
					echo "<td>".$Row['id']."</td>";
					echo "<td><img src='process/".$Row['pic']."' height = 60px width = 60px></td>";
					echo "<td>".$Row['firstName']." ".$Row['lastName']."</td>";
					echo "<td>".$Row['email']."</td>";
					echo "<td>".$Row['birthday']."</td>";
					echo "<td>".$Row['gender']."</td>";
					echo "<td>".$Row['contact']."</td>";
					echo "<td>".$Row['nid']."</td>";
					echo "<td>".$Row['address']."</td>";
					echo "<td>".$Row['WorkID']."</td>";
					echo "<td>".$Row['dID']."</td>";
					echo "<td>".$Row['degree']."</td>";
					echo "<td><a href=\"edit.php?id=$Row[id]\">Edit</a> | <a href=\"delete.php?id=$Row[id]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";
				}
			?>
		</table>
</body>
</html>