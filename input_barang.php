<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <script src="jquery/jquery-3.1.1.min.js"></script>
    <title>APLIKASI INPUT BARANG</title>
</head>

<div class="container">
<!-- header -->
    <?php
    include_once "header.php";
    ?>
    <!-- form -->
    <h2><center>INPUT DATA</center></h2>
    <form class="form-horizontal" action="barang_o.php" method="POST">
        <div class="form-group">
            
            <div class="col-sm-10">
                <input type="hidden" class="form-control" name="kd_barang">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">NAMA BARANG</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="nm_barang">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">JUMLAH  BARANG</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="jml_barang">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">HARGA</label>
            <div class="col-sm-10">
                <input type="number" class="form-control" name="harga">
            </div>
        </div> 
        <button type="submit" class="btn btn btn-success btn-lg" value="add" name="submit">TAMBAH</button>
    </form>
    <br>
    <br>
    <!-- footer -->
    <?php
 include_once "footer.php";
?>

</div>

</html>