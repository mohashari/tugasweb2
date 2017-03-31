<?php
include_once'header.php';
include 'koneksi.php';
$nim=$_GET['nim'];

$sql="SELECT * FROM tb_mhs WHERE nim = '".$nim."'";
$result=mysqli_query($con,$sql);
$row=mysqli_fetch_array($result);
?>
<ol class="breadcrumb">
<li><a href="input_mahasiswa.php">Input</a></li>
<li><a href="tampil_mahasiswa.php">Tampil</a></li>
</ol>
<form class="form-horizontal"  action="mahasiswa_o.php" method="POST">
    <h3 style="color:coral;"><center> Edit Data Mahasiswa </center></h3>
    <div class="form-group">
        <label class="control-label col-sm-2">NIM</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="nim" value="<?php print $row[0];?>" readonly>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">NAMA</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="name" value="<?php print $row[1];?>"required>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">JENIS KELAMIN</label>
        <div class="col-sm-10">
    <select class="form-control" name="jekel">
        <option><?php print $row[2];?></option>
        <option value="laki-laki">LAKI - LAKI</option>
        <option value="perempuan"> PEREMPUAN </option>
    </select>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2">ALAMAT</label>
        <div class="col-sm-10">
            <textarea rows="5" class="form-control" name="alamat"><?php print $row[3];?></textarea>
        </div>
    </div>
    <br>
    <br>
    <div class="form-group">
						<div class="col-sm-12">
						<button type="submit" class="btn btn-primary btn-lg" id="submit" name="submit" value="edit">SAVE</button>
						</div>
					</div>
    
</form>
   <?php
include_once'footer.php';
?>