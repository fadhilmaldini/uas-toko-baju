<!DOCTYPE html>
<html>
<head>
	<title>BRAINWASH CART</title>
	<link rel="stylesheet" href="style.css">
</head>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
.report{
	height: 50px;
	float: left;
	width: 100%;
	margin: 10px;
	padding: 6px;
	background-color: #ff4321;
	color: white;
	font-weight: bold;
	text-align: center;
} 
</style>
<body>
		<div class="navbar">
		<div class="logo">
			<img src="icon/logo.PNG" width="125px">
		</div>
		<nav>
			<ul>
				<li><a href="">HOME</a></li>
				<li><a href="">SHOP</a></li>
				<li><a href="">COLLECTIONS</a></li>
				<li><a href="">ABOUT</a></li>
				<li><a href="">ACCOUNT</a></li>
			</ul>
		</nav>
		<img src="icon/shopping-cart.PNG" width="20px" height="20px">
	</div>

<h2 align="center">BRAINWASH CART</h2><br><br >

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "uas";
$id_barang= "";
if (isset($_GET['id_barang'])){
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
	$id_barang = $_GET['id_barang'];
	$sql = "SELECT * FROM t_barang WHERE id_barang=".$_GET['id_barang'];
	$result = $conn->query($sql);
 
	if ($result->num_rows > 0) {
  		// output data of each row
  		while($row = $result->fetch_assoc()) {
   		 //echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
		echo'
		<div class="row">
			<div class="col-25">
				<img src="produk/'.$row['ft_barang'].'" alt="Image" width="250" height="250">
			</div>
			<div class="col-75">
				<div class="name">'.$row['nm_barang'].'</div>
				<div class="price"> $'.$row['harga_promo'].'</div>
				<div class="desc">'.$row['deskripsi'].'</div>
			</div>
		</div>
	';
 		}
	} else {
  		echo "0 results";
	}
$conn->close();
}

if (isset($_GET['submit'])){
	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
  	die("Connection failed: " . $conn->connect_error);
}

	$sql = "INSERT INTO t_pesan (id_barang, nama, hp, jumlah, kode_pos, alamat)
	VALUES ('".$_GET['id_barang']."', '".$_GET['nama']."', '".$_GET['hp']."', '".$_GET['jumlah']."', '".$_GET['kode_pos']."', '".$_GET['alamat']."')";

	if ($conn->query($sql) === TRUE) {
  	echo "<div class='row'>
			<div class='report'>
			Pemesanan Anda Telah Berhasil
			</div>
		</div>";
	} else {
  		echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
}
 

?>

	</div>
	<form action="pesan.php">
		<div class="row">
			<div class="col-25">
				<label for="id_barang">ID Barang</label>
			</div>
			<div class="col-75">
				<input type="text" id="id_barang" name="id_barang" value="<?php echo $id_barang ?>">
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="nama">Nama</label>
			</div>
			<div class="col-75">
				<input type="text" id="nama" name="nama" placeholder="Nama Anda">
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="hp">Nomor Hp</label>
			</div>
			<div class="col-75">
				<input type="text" id="hp" name="hp" placeholder="No Hp">
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="jumlah">Jumlah</label>
			</div>
			<div class="col-75">
				<select id="jumlah" name="jumlah">
					<option Value="1">1</option>
					<option Value="2">2</option>
					<option Value="3">3</option>
					<option Value="4">4</option>
					<option Value="5">5</option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col-25">
				<label for="hp">Kode Pos</label>
			</div>
			<div class="col-75">
				<input type="text" id="kode pos" name="kode pos" placeholder="Kode">
			</div>
		</div>			
		<div class="row">
			<div class="col-25">
				<label for="alamat">Alamat</label>
			</div>
			<div class="col-75">
				<textarea id="alamat" name="alamat" placeholder="Alamat rumah anda. ." style="height:200px"></textarea>
			</div>
		</div>	
		<div class="row">
			<input type="submit" name="submit" value="submit">
		</div>
		</form>


</body>
</html>