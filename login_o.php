<?php
include'koneksi.php';

session_start();
$id=$_POST['id_user'];
$pwd=$_POST['pwd_user'];

$sql="SELECT * FROM tb_login WHERE id_user='$id' AND pwd_user='$pwd'";
$resul=mysqli_query($con,$sql);
$count=mysqli_num_rows($resul);    
if ($count >= 1){
    $row = mysqli_fetch_array($resul);
    $id = $row['id_user'];
    $nama=$row['nama_user'];
    $akses=$row['id_akses'];
 
 //print $sql;
   $_SESSION['id']= $id;
   $_SESSION['nama']=$nama;
   $_SESSION['akses']=$akses;
   
   //print $id;
   //print $nama;
   //print $akses;
    echo '<META HTTP-EQUIV="Refresh" Content="0; URL=home.php">';
}else{
    echo '<META HTTP-EQUIV="Refresh" Content="0; URL=index.php">';
}

?>