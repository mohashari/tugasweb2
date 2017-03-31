<?php
include 'koneksi.php';
$sqlx = "SELECT * FROM tb_mhs ORDER BY nim DESC";
$resultx = mysqli_query($con, $sqlx);
$countx = mysqli_num_rows($resultx);

if ($countx <= 0 ){
	$id = "mhs0001";	
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
	$submit = $_POST['submit'];
if($submit == 'add'){
$data = array($_POST['name'],$_POST['jekel'],$_POST['alamat']);
$sql="INSERT  INTO tb_mhs (nim,nama,jekel,alamat) VALUES
('".$id."',
 '".$data[0]."',
 '".$data[1]."',
 '".$data[2]."')";
// print $sql;
mysqli_query($con,$sql);
echo '<META HTTP-EQUIV="Refresh" Content="0; URL=tampil_mahasiswa.php">'; 
}elseif($submit == 'edit'){
	$datax=array($_POST['nim'],$_POST['name'],$_POST['jekel'],$_POST['alamat']);
	$sql="UPDATE tb_mhs SET  nama= '".$datax[1]."',jekel= '".$datax[2]."',alamat= '".$datax[3]."' WHERE nim= '".$datax[0]."'";
	mysqli_query($con,$sql);
	//print $sql;
	echo '<META HTTP-EQUIV="Refresh" Content="0; URL=tampil_mahasiswa.php">'; 

}
}

?>
