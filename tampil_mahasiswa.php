<?php
include_once'header.php';
include 'koneksi.php';
?>
<ol class="breadcrumb">
<li><a href="input_mahasiswa.php">Input</a></li>
<li><a href="tampil_mahasiswa.php">Tampil</a></li>
</ol>


<!-- table -->
<div class="container">
<div class="table-responsive">
  <table class="table">
  <thead>
    <tr>
        <th style="text-align:center;">NO</th>
        <th style="text-align:center;">NIM</th>
        <th style="text-align:center;">NAMA</th>
        <th style="text-align:center;">JENIS KELAMIN</th>
        <th style="text-align:center;">ALAMAT</th>
        <th style="text-align:center;">MENU</th>
    </tr>
</thead>

<tbody>
<?php
$sql="SELECT * FROM tb_mhs ORDER BY nim DESC";
$query=mysqli_query($con,$sql);
$i=0;
while ($row=mysqli_fetch_array($query)){
    $i++;
?>
<tr>
        <td style="text-align:center;"><?php print$i;?></td>
        <td style="text-align:center;"><?php print $row[0];?></td>
        <td style="text-align:center;"><?php print $row[1];?></td>
        <td style="text-align:center;"><?php print $row[2];?></td>
        <td style="text-align:center;"><?php print $row[3];?></td>
        <td style="text-align:center;"><a class="btn btn-danger btn-sm" href="delete_mahasiswa.php?nim=<?php echo $row[nim];?>"><span class="glyphicon glyphicon-remove">DELETE</span></a> || <a class="btn btn-default btn-sm" href="edit_mahasiswa.php?nim=<?php print $row[nim];?>"><span class="glyphicon glyphicon-pencil">EDIT</span></a> </td>
    </tr>
    
<?php
}
?>
</tbody>

</table>
</div>
</div>
<?php
include_once'footer.php';
?>