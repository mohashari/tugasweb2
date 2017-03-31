<?php
include'koneksi.php';
$row = $_GET['nim'];

$sql="DELETE FROM tb_mhs WHERE nim='".$row."' ";
mysqli_query($con,$sql);
//print $sql;
echo "<script> alert('DATA DI HAPUS');</script>";
echo '<META HTTP-EQUIV="Refresh" Content="0; URL=tampil_mahasiswa.php">';
?>