<?php
include 'koneksi.php';
$kd_barang=$_GET['kd_barang'];
print $kode;
$sql="DELETE FROM tb_barang WHERE kd_barang='".$kd_barang."'";
mysqli_query($con,$sql);
//print $sql;
echo "<script> alert('DATA DI HAPUS');</script>";
echo '<META HTTP-EQUIV="Refresh" Content="0; URL=tampil_barang.php">';
?>