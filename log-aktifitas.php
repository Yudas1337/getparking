<?php
include "koneksi.php";

if(empty($_SESSION))
   session_start();

if(!isset($_SESSION['username'])) {
   header("Location: login.php");
   exit;
}
?>
<!DOCTYPE html>
<html>
<head>
<title>GetParking Member Area</title>
<link rel="stylesheet" type="text/css" href="styles.css"/>
<link rel="shortcut icon" href="images/parkir.png">
<style>
table {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid black;
}

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #B40404;
  color: white;
}
</style>
</head>
<body>
<center>
    <img src="images/logo.png" style="width: 15%"/>
</center>
<ul class="topnav">
	<?php if($_SESSION['level'] == 'admin'){ ?>
  <li><a href="home.php">Beranda</a></li>
  <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Laporan</a>
  	<div class="dropdown-content">
  		<a href="log-parkir.php">Laporan Parkir</a>
  		<a href="log-keuangan.php">Laporan Keuangan</a>
  		<a href="log-aktifitas.php">Laporan Aktifitas</a>
  	</div>
  </li>
  <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Kendaraan</a>
      <div class="dropdown-content">
        <a href="entry-mobil.php">Entry Kendaraan Masuk</a>
        <a href="mobilaktif.php">Data Kendaraan Aktif</a>
      </div>
  </li>
    <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Parkir</a>
      <div class="dropdown-content">
        <a href="tambah-parkir.php">Tambah Ruang Parkir</a>
        <a href="data-parkir.php">Data Ruang Parkir</a>
      </div>
    </li>
    <li class="dropdown">
      <a href="javascript:void(0)" class="dropbtn">Pengaturan Karyawan</a>
      <div class="dropdown-content">
        <a href="tambah-karyawan.php">Buat Karyawan Baru</a>
        <a href="daftar-karyawan.php">Daftar Karyawan</a>
      </div>
    </li>


    <li class="right"><a href="logout.php">Logout</a></li>
    <li class="right"><font style="display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;"><? echo "Welcome  "?><font style="color: #FA5882;"><? echo $_SESSION['namalengkap'] ?></font></font></li>

  <?php }if($_SESSION['level'] == 'kr'){ ?>
    <li><a href="home.php">Beranda</a></li>
    <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Laporan</a>
      <div class="dropdown-content">
        <a href="log-parkir.php">Laporan Parkir</a>
      </div>
    </li>
      <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Parkir</a>
        <div class="dropdown-content">
          <a href="tambah-parkir.php">Tambah Ruang Parkir</a>
          <a href="data-parkir.php">Data Ruang Parkir</a>
        </div>
      </li>

      <li class="right"><a href="logout.php">Logout</a></li>
      <li class="right"><font style="display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;"><? echo "Welcome  "?><font style="color: #FA5882;"><? echo $_SESSION['namalengkap'] ?></font></font></li>

<?php }if($_SESSION['level'] == 'kp1' || $_SESSION['level'] == 'kp2'){?>

  <li><a href="home.php">Beranda</a></li>
  <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Laporan</a>
    <div class="dropdown-content">
      <a href="log-parkir.php">Laporan Parkir</a>
          </div>
  </li>
  <li class="dropdown"><a href="javascript:void(0)" class="dropbtn">Kendaraan</a>
      <div class="dropdown-content">
        <a href="entry-mobil.php">Entry Kendaraan Masuk</a>
        <a href="mobilaktif.php">Data Kendaraan Aktif</a>
      </div>
  </li>


    <li class="right"><a href="logout.php">Logout</a></li>
    <li class="right"><font style="display: block;color: white;text-align: center;padding: 14px 16px;text-decoration: none;"><? echo "Welcome  "?><font style="color: #FA5882;"><? echo $_SESSION['namalengkap'] ?></font></font></li>
    <?php }?>
  </ul>
<div>
  <table class="table" height=90% width=90% align=center>
    <tr>
      <th>No</th>
      <th>Waktu</th>
      <th>Aktifitas</th>
    </tr>
    <?php
    $query_mysql = mysqli_query($connect,"SELECT * FROM aktifitas");
    $nomor = 1;
    while($data = mysqli_fetch_array($query_mysql)){
    ?>
    <tr>
      <td><?php echo $nomor++; ?></td>
      <td><?php echo $data['tgl']; ?></td>
      <td><?php echo $data['keterangan']; ?></td>
    </tr>
    <?php } ?>
  </table>
</div>
</body>
</html>
