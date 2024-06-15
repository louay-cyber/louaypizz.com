<?php
$con = mysqli_connect("localhost","root","","commande") or die ("ereur de cnx");
$type =$_POST["type"];
$quantite=$_POST["quant"];
$tel=$_POST["tel"];
$motpass=$_POST["motp"];
$req="select * from client where motpass='$motpass' and tel='$tel' ";
$rep=mysqli_query($con,$req)or die("erreur:"mysqli_error($con));
if(mysqli_num_rows($rep)==0)
    echo "N° Tél ou mot de passe erroné !";
else  {
    mysqli_query($con, "insert into commande values ('$type','$tel',NOW(),'$quantite')") or die ("ajout commande échoué");
    echo "Commande éffectué avec succès";
}
?>