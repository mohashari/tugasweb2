<?php
session_start();
session_destroy();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
        <!--<link rel="stylesheet" href="../style.css">-->
</head>
    <body>
        <div class="container">
        <h1><center>SELAMAT DATANG DI APLIKASI SISTEM INFORMASI KAMPUS</center></h1>
        <br>
        <br>

        <center><button class="btn btn-success btn-lg" onclick="document.getElementById('log').style.display='block'">LOGIN</button></center>
        
        <div id="log" class="modal" role="dialog">
            <form class=" modal-fade form-horizontal" action="login_o.php" method="POST">
                <div class="modal-dialog modal-lg">
                <div class="modal-content">
                <h5><center>FORM LOGIN</center></h5>
                <div class="modal-body">
                <div class="form-group">
                    <div class="col-sm-10"></div>
                    <input type="text" class="form-control" name="id_user" placeholder="ID">
                </div>
                 <div class="form-group">
                    <div class="col-sm-10"></div>
                    <input type="password" class="form-control" name="pwd_user" placeholder="password">
                </div>
                
                <div class="modal-footer">
                    <input type="submit" value="LOGIN" name="login" class="btn btn-primary">
                    <button type="button" onclick="document.getElementById('log').style.display='none'" class="btn btn-warning">Cancel</button>
                </div>
                </div>
                </div>
            </form>

        </div>
        <script>
        var modal = document.getElementById('log');

        window.onclick = function(event){
            if(event.target == modal){
                modal.style.display = "none";
            }
        }
        </script>
    </body>
</html>