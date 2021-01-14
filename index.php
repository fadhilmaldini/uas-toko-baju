<!DOCTYPE html>
<html>
<head>
	<title>BRAINWASH</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="header">
	<div class="container">
		<div class="navbar">
		<div class="logo">
			<img src="icon/logo.PNG" width="125px">
		</div>
		<nav>
			<ul>
				<li><a href="index.php">HOME</a></li>
				<li><a href="">SHOP</a></li>
				<li><a href="">COLLECTIONS</a></li>
				<li><a href="buku_tamu.php">BUKU TAMU</a></li>
				<li><a href="">ACCOUNT</a></li
>			</ul>
		</nav>
		<img src="icon/shopping-cart.PNG" width="20px" height="20px">
	</div>
	<div class="row">
		<div class="col-2">
			<h1>NEW <span>ARRIVALS</span></h1>
			<p>THE SPRING-SUMMER 2021 COLLECCTION IS A DEDICATED CURATION<br>OF LA'S DISTINCTIVE LIFESTYLES</p>
			<a href="" class="button">SHOP NOW</a>
		</div>
		<div class="col-2">
			<img src="icon/elhaus.JPG">
		</div>
	</div>
	</div>
	</div>

<!-- featured categories -->
	<div class="categories">
		<div class="small-container">
			<div class="row">
			<div class="col-3">
				<img src="model/model 2.JPEG">
			</div>
			<div class="col-3">
				<img src="model/model 4.JPEG">
			</div>
			<div class="col-3">
				<img src="model/model 5.JPEG">
			</div>
		</div>
	</div>
	</div>
<!-- featured product -->
<h2 class="title">Product</h2>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "uas";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM t_barang";
$result = $conn->query($sql);
 
if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    //echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	echo'
		<div class="home">
		<div class="row">
			<div class="col-4">
				<img src="produk/'.$row['ft_barang'].'" alt="Cinque Terre" >
				<div class="name"><a target="_blank_" href="pesan.php?id_barang='.$row['id_barang'].'">'.$row['nm_barang'].'</a>
				<div style="color:red"><del>$ '.$row['harga_asli'].'</del></div>
				<p class="promo">$'.$row['harga_promo'].'</p>
			</div>
		</div>
			<div class="submit"><a target="blank"href="pesan.php?id_barang='.$row['id_barang'].'"><input type="submit" value="Beli"></a></div>
		</div>
	';
  }
} else {	
  echo "0 results";
}

$conn->close();
?>

</body>
</html>