<?php
include_once'header.php';

?>
<form class="form-horizontal"  action="mahasiswa_o.php" method="POST">
    <h3 style="color:coral;"><center> Input Data Mahasiswa </center></h3>
    <!--<div class="form-group">
        <label class="control-label col-sm-2">NIM</label>
        <div class="col-sm-10">
            <input type="hidden" class="form-control" name="nim" placeholder="MASUKAN NIM">
        </div>
    </div>-->
    <div class="form-group">
        <label class="control-label col-sm-2">NAMA</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name" placeholder="MASUKAN NAMA">
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">JENIS KELAMIN</label>
        <div class="col-sm-10">
    <select class="form-control" name="jekel">
        <option>pilih jenis kelamin</option>
        <option value="laki-laki">LAKI - LAKI</option>
        <option value="perempuan"> PEREMPUAN </option>
    </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">ALAMAT</label>
        <div class="col-sm-10">
            <textarea rows="5" class="form-control" name="alamat"></textarea>
        </div>
    </div>
    <br>
    <br>
    <div class="form-group">
						<div class="col-sm-12">
						<button type="submit" class="btn btn-primary btn-lg fa fa-plus" id="submit" name="submit" value="add"> Tambah Data</button>
						</div>
					</div>
    
</form>
   <?php
include_once'footer.php';
?>