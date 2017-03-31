<?php
include_once'header.php';
include'koneksi.php';
?>
<ol class="breadcrumb">
<li><a href="input_barang.php">Input</a></li>
<li><a href="tampil_barang.php">Tampil</a></li>
</ol>

<div class="table-responsive">
    <table class="table">
       <tr>
            <th style="text-align: center;">NO</th>
            <th style="text-align: center;">KODE BARANG</th>
            <th style="text-align: center;">NAMA BARANG</th>
            <th style="text-align: center;">JUMLAH BARANG</th>
            <th style="text-align: center;">HARGA BARANG</th>
            <th style="text-align: center;">MENU</th>
        </tr>
         <?php
        $sql="SELECT * FROM tb_barang ORDER BY kd_barang";
        $result=mysqli_query($con,$sql);
        $i=0;
        while($row=mysqli_fetch_array($result)){
            $i++;
            //print $sql;
         ?>
        <tr>
            <td style="text-align: center;"><?php print $i;?></td>
            <td style="text-align: center;"><?php print $row[0];?></td>
            <td style="text-align: center;"><?php print $row[1];?></td>
            <td style="text-align: center;"><?php print $row[2];?></td>
            <td style="text-align: center;"><?php print $row[3];?></td>
            <td style="text-align:center;"><a class="btn btn-danger btn-sm" href="delete_barang.php?kd_barang=<?php echo $row[kd_barang];?>">
            <span class="glyphicon glyphicon-remove">DELETE</span></a> 
            || <a class="btn btn-default btn-sm" href="edit_barang.php?kd_barang=<?php print $row[kd_barang];?>">
            <span class="glyphicon glyphicon-pencil">EDIT</span></a> </td>
        </tr>
        <?php   
        }
        ?>

    </table>
</div>

<?php
include_once'footer.php';
?>