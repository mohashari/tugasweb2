<!-- header -->
    <?php
    include_once "header.php";
    include'koneksi.php';
    $kd_barang=$_GET['kd_barang'];
    $sql="SELECT * FROM tb_barang WHERE kd_barang ='".$kd_barang."'";
    $result= mysqli_query($con,$sql);
    $row = mysqli_fetch_array($result);

    print $sql;
    ?>
    <ol class="breadcrumb">
<li><a href="input_barang.php">Input</a></li>
<li><a href="tampil_barang.php">Tampil</a></li>
</ol
    <!-- form -->

    <h2><center>INPUT DATA</center></h2>
    <form class="form-horizontal" action="barang_o.php" method="POST">
        <div class="form-group">
            <label class="control-label col-sm-2">KODE BARANG</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="kd_barang" value="<?php print $row[0];?>" readonly>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">NAMA BARANG</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="nm_barang" value="<?php print $row[1];?>"  >
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">JUMLAH  BARANG</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="jml_barang" value="<?php print $row[2];?>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">HARGA</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="harga" value="<?php print $row[3];?>">
            </div>
        </div> 
        <button type="submit" class="btn btn btn-success btn-lg" value="edit" name="submit">EDIT</button>
    </form>
    <br>
    <br>
    <!-- footer -->
    <?php
 include_once "footer.php";
?>
