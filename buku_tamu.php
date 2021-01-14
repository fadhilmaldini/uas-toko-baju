<!DOCTYPE html>
<html>
<head>
	<title>BUKU TAMU</title>
</head>
<style>
*{
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}
body{
	font-family: sans-serif;
}
.navbar{
	display: flex;
	align-items: center;
	padding: 20px;
}
nav{
	flex: 1;
	text-align: right;
}
nav ul{
	display: inline-block;
	list-style-type: none;
}
nav ul li{
	display: inline-block;
	margin-right: 20px;
}
a{
	text-decoration: none;
	color: #555;
}
p{
	color: #555;
}
.container{
	max-width: 1300px;
	margin: auto;
	padding-left: 25px;
	padding-right: 25px; 
}

.gallery{
		margin: 12px;
		border: 1px solid #ccc;
		width: 300px;
		padding: 6px;
		float: left;
		
	}
.gallery:hover{
	border: 1px solid #777;
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
				<li><a href="">BUKU TAMU</a></li>
				<li><a href="">ACCOUNT</a></li>
			</ul>
		</nav>
		<img src="icon/shopping-cart.PNG" width="20px" height="20px">
	</div>
	<h2 align="center">Buku Tamu</h2>
	<table>
		<form action="buku_tamu.php" method="get">
			<tr><td>Nama Lengkap</td><td> : <input type="text" id="nama" name="nama_lengkap" size="55"></td></tr>
			<tr><td>Alamat</td><td> : <input type="text" name="alamat" size="55"></td></tr>
			<tr><td>Email</td><td> : <input type="email" name="email" size="55"></td></tr>
			<tr><td>No Hp</td><td> : <input type="No hp" name="No hp" size="55"></td></tr>
			<tr><td>Mengetahui BRAINWASH</td><td> : <select name="tahu">
				<option selected="select">-=Pilih=-</option>
        		<option value="sosial_media">Sosial Media</option>
        		<option value="Iklan">Iklan</option>
        		<option value="teman">Teman</option>
        	</select> </td></tr>
        	<tr><td>Saran</td><td>:</td></tr>
			<tr><td></td><td><textarea id="saran" name="saran" cols="40" rows="4"></textarea><br><br>
			<input name="submit" type="submit" value="submit"><input type="reset" value="reset"></td></tr>
		</form>
	</table> <br>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "uas";
$id_barang= "";
if (isset($_GET['submit'])){
  	// Create connection
 	$conn = new mysqli($servername, $username, $password, $dbname);
  	// Check connection
 if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
 }

  $sql = "INSERT INTO t_masukan (nama, saran)
  VALUES ('".$_GET['nama_lengkap']."', '".$_GET['saran']."')";

  if ($conn->query($sql) === TRUE) {
    echo '
      <div class="row">
        <div class="gallery" style="color: white">
        <h3><b>'.$_GET['nama_lengkap'].'<b></h3>
        <h5>'.$_GET['saran'].'</h3>
        </div>
      </div>
    ';
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }

  $conn->close();
}

	// Create connection
  	$conn = new mysqli($servername, $username, $password, $dbname);
  	// Check connection
  	if ($conn->connect_error) {
    	die("Connection failed: " . $conn->connect_error);
  	}
    $sql = "SELECT * FROM t_masukan";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
        echo '
            <div class="gallery">
                <div class="name"><b>'.$row['nama'].'</b></div>
                <div class="desc">'.$row['saran'].'</div><br>
            </div>
        ' ;
        }
    } else {
        echo "0 results";
    }
    $conn->close();

?>
</body>
</html>