function verifalpha(ch) {
  for (let i = 0; i < ch.length; i++)
    if (ch.charAt(i).toUpperCase() < "A" || ch.charAt(i).toUpperCase() > "Z")
      return false;
}
function verifnum(ch) {
  for (let i = 0; i < ch.length; i++)
    if (ch.charAt(i) < "1" || ch.charAt(i) > "9") return false;
}
function verifalphanum(ch) {
  for (let i = 0; i < ch.length; i++)
    if (
      ch.charAt(i) < "1" ||
      (ch.charAt(i) > "9" &&
        (ch.charAt(i).toUpperCase() < "A" || ch.charAt(i).toUpperCase() > "Z"))
    )
      return false;
}

function verif1() {
  let nom = document.getElementById("nom").value;
  if (3 > nom.length || verifalpha(nom) == false) {
    alert("nom incorrect");
    return false;
  }
  let prenom = document.getElementById("pre").value;
  if (3 > prenom.length || verifalpha(prenom) == false) {
    alert("prenom incorrect");
    return false;
  }
  let tel = document.getElementById("tel").value;

  if (verifnum(tel) == false || 8 != tel.length || tel[0] <= 1) {
    alert(" num tel incorrect");

    return false;
  }
  let adresse = document.getElementById("adr").value;
  if (adresse.length < 10) {
    alert("adresse  incorrect");

    return false;
  }
  let pass = document.getElementById("motp").value;
  if (6 != pass.length || pass.indexOf(" ") != -1) {
    alert("mot de passe incorrect");
    return false;
  }
}
function verif2() {
  let type = document.getElementById("type").selectedIndex;
  if (type == 0) {
    alert("type  invalide");
    return false;
  }

  let quantite = document.getElementById("quant").value;
  if (
    quant == "" ||
    verifnum(quantite) == false ||
    1 > quantite ||
    quantite > 5
  ) {
    alert("quantite invalide");
    return false;
  }
  let tel = document.getElementById("tel").value;

  if (verifnum(tel) == false || 8 != tel.length || tel[0] <= 1) {
    alert(" num tel incorrect");

    return false;
  }

  let pass = document.getElementById("motp").value;

  if (6 != pass.length || pass.indexOf(" ") != -1) {
    alert("motp incorrect");
    return false;
  }
}

function verif3() {
  let tel = document.getElementById("tell").value;
  if (verifnum(tel) == false || 8 != tel.length || tel[0] <= 1) {
    alert(" num tel incorrect");
    return false;
  }
  let pizz = document.getElementById("npizza").value;
  if (pizz.length == 0) {
    alert("Vous devez donner le nom de pizza");
    return false;
  }
  let eval = document.getElementById("eval").value;
  if (verifnum(eval) == false || eval.length > 2 || eval.length == 0) {
    alert("l'évaluation doit être sur 10");
    return false;
  }
}
