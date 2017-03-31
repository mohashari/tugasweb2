<?php
include 'koneksi.php';
$sqlx = "SELECT * FROM tb_barang ORDER BY kd_barang DESC";
$resultx = mysqli_query($con, $sqlx);
$countx = mysqli_num_rows($resultx);

if ($countx <= 0 ){
	$id = "brg0001";	
} else {
	$rowx = mysqli_fetch_array($resultx);
	$tmpRow = $rowx[0];
	// $tmpRow = "tr9999";
	$tmp1 = substr($tmpRow, 0, 2);
	$tmp2 = substr($tmpRow, 2, 4);
	if ($tmp2 < 9){
		$tmp2++;
		$id = $tmp1."000".$tmp2;
	} else if ($tmp2 >= 9 and $tmp2 < 99){
		$tmp2++;
		$id = $tmp1."00".$tmp2;
	} else if ($tmp2 >= 99 and $tmp2 < 999){
		$tmp2++;
		$id = $tmp1."0".$tmp2;
	} else if ($tmp2 >= 999 and $tmp2 < 9999){
		$tmp2++;
		$id = $tmp1.$tmp2;
	}
}
?>
<?php

if(isset($_POST['submit'])){
    $submit=$_POST['submit'];
    if($submit == 'add'){
        $data=array($_POST['nm_barang'],$_POST['jml_barang'],$_POST['harga']);
        $sql="INSERT INTO tb_barang (kd_barang,nm_barang,jml,harga) VALUES (
        '".$id."',
        '".$data[0]."',
        '".$data[1]."',
        '".$data[2]."'
        )";
        mysqli_query($con,$sql);
        //print $sql;
        echo '<META HTTP-EQUIV="Refresh" Content="0; URL=tampil_barang.php">';
        }elseif($submit=='edit'){
            $data=array($_POST['kd_barang'],$_POST['nm_barang'],$_POST['jml_barang'],$_POST['harga']);
            $sql="UPDATE tb_barang SET nm_barang='".$data[1]."',jml='".$data[2]."',harga='".$data[3]."' WHERE kd_barang='".$data[0]."'";
            mysqli_query($con,$sql);
            echo '<META HTTP-EQUIV="Refresh" Content="0; URL=tampil_barang.php">';

        }
}
?>