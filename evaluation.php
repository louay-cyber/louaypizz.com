<?php
$con = mysqli_connect("localhost","root","","commande") or die ("ereur de cnx");
$tel=$_POST["tel"];
$nomp=$_POST["npizza"];
$eval=$_POST["eval"];
$req = "SELECT * from commande where tel = '$tel'";
$res = mysqli_query($con,$req) or die("recherche échouée !");
if(mysqli_num_rows($res)==0){
    echo("Vous n'avez aucune comande de la pizza ".$nomp.", vous ne pouvez pas donner votre avis !");
   }
else{
    $req = "SELECT idpizza from pizza where nompizza = '$nomp'";
    $res = mysqli_query($con,$req) or die("insersion échouée !");
    $id= mysqli_fetch_array($res);
    mysqli_query($con,"INSERT into evaluation values('$tel','$id','$eval'") or die("insersion échouée !");
    echo "Merci beaucoup pour votre évaluation" ;
   }   
mysqli_close()
?>
