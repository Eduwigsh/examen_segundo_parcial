function validarForm2(){
    var id2;
    var cos_sab2;
    var nom_sab2;
    id2 = document.getElementById('id2').value;
    cos_sab2 = document.getElementById('cos_sab2').value;
    nom_sab2 = document.getElementById('nom_sab2').value;
    expresion2 = /^[\d]{1,3}[.]{1}[\d]{1,3}$/;
    expresion3 = /^[a-zA-ZÀ-ÿ\s]{1,30}$/;

    if(id2 === "" || cos_sab2 === "" || nom_sab2 === ""){
        alert("Todos los campos de este formulario son obligatorios. Por favor rellenalos");
        return false;
    }
    else if(!expresion2.test(cos_sab2)) {
        alert("El costo solo puede contener desde 1 carácter hasta 3 carácteres antes y despues del punto, solo puede contener números y debe llevar un punto. No debes ingresar el signo de pesos");
        return false;
    }
    else if(!expresion3.test(nom_sab2)) {
        alert("El Sabor tiene que ser de 1 a 30 dígitos, solo puede contener letras y acentos");
        return false;
    }
}