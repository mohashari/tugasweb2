<?php
include 'header.php';
?>

<!-- content -->

<form class="form-horizontal" action="#" method="POST">
<h3 ><center>INPUT MATAKULIAH</center></h3>
<div class="form-group">
    <label class="control-label col-sm-2">KODE MATAKULIAH</label>
    <div class="col-sm-10">
        <input type="text" name="kode_matakuliah" class="form-control" >
    </div>
</div>
    
    <div class="form-group">
    <label class="control-label col-sm-2">NAMA MATAKULIAH</label>
    <div class="col-sm-10">
        <input type="text" name="nama_matakuliah" class="form-control" >
    </div>
    </div>
    
    <div class="form-group">
    <label class="control-label col-sm-2">DOSEN PENGAJAR</label>
    <div class="col-sm-10">
        <input type="text" name="dosen_pengajar" class="form-control" >
    </div>
</div>
    
<div class="form-group">
    <label class="control-label col-sm-2">SEMESTER</label>
    <div class="col-sm-10">
        <input type="text" name="semester" class="form-control" >
    </div>
</div>
    <div class="form-group">
    <label class="control-label col-sm-2">RUANGAN</label>
    <div class="col-sm-10">
        <input type="text" name="ruangan" class="form-control" >
    </div>
    </div>
    <div class="form-group">
    <input type="submit" class="btn btn-primary btn-lg" value="SIMPAN">
    </div> 
</form>


<?php
include 'footer.php';
?>