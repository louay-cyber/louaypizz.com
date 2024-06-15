<?php
$con = mysqli_connect("localhost","root","","commande") or die ("ereur de cnx");
$nom=$_POST["nom"];
$prenom=$_POST["pre"];
$tel=$_POST["tel"];
$adresse=$_POST["adr"];
$motpass=$_POST["motp"];
$req="select * from client where tel = '$tel'";
$res=mysqli_query($con,$req)or die("req invalide");
if(mysqli_num_rows($res)==0){
    $req="insert into client values('$tel','$nom','$prenom','$adresse','$motpass')" ;
    mysqli_query($con,$req)or die("insersion invalide");
    echo("inscription effectuée avec succès");
}
else{
    $x=mysqli_fetch_array($res); 
    if( ($x[1]!=$nom) || ($x[2]!=$prenom) ){ 
        echo( "Erreur : Tél, Nom ou Prénom erroné !" ); 
    }
    else { 
    echo "client déjà inscrit";
}
}
?>