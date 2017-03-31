<?php
session_start();
$_SESSION[id];
$_SESSION[nama];
$_SESSION[akses];

$nama=$_SESSION[nama];
?>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="xamr/code/b.css" type="text/css">
        <link rel="stylesheet" href="xamr/code/fa.css" type="text/css">
        <link rel="stylesheet" href="xamr/code/a.css" type="text/css">
        <link rel="stylesheet" href="xamr/code/xamr.css" type="text/css">
        <link rel="stylesheet" href="xamr/code/tbp.css" type="text/css">
        <script src="xamr/code/j.js"></script>
        <script src="xamr/code/b.js"></script>
    </head>
    <body>
        <div class="container">
<nav class="navbar navbar-inverse">
  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="home.php">Belajar Pemprograman Web</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home.php">Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown"href="tampil_mahasiswa.php">Mahasiswa
        <span class="caret"></span></a>
      	 <ul class="dropdown-menu">
          <li><a href="input_mahasiswa.php">Mahasiswa Input</a></li>
          <li><a href="tampil_mahasiswa.php">Mahasiswa Tampil</a></li> 
        </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="tampil_barang.php">Barang
        <span class="caret"></span></a>
         <ul class="dropdown-menu">
          <li><a href="input_barang.php">Barang Input</a></li>
          <li><a href="tampil_barang.php">Barang Tampil</a></li>
        </ul>
      </li>
      
      <li><a href="buku_tamu">BUKU TAMU</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"> <?php print $nama;?> </span></a></li>
      <li><a href="index.php"><span class="glyphicon glyphicon-log-out">LogOut</span></a></li>

    </ul>
  </div>
</nav>
        