function validarForm(){
    var id;
    var cos_sab;
    var nom_sab;
    id = document.getElementById('id').value;
    cos_sab = document.getElementById('cos_sab').value;
    nom_sab = document.getElementById('nom_sab').value;
    expresion2 = /^[\d]{1,3}[.]{1}[\d]{1,3}$/;
    expresion3 = /^[a-zA-ZÀ-ÿ\s]{1,30}$/;

    if(id === "" || cos_sab === "" || nom_sab === ""){
        alert("Todos los campos de este formulario son obligatorios. Por favor rellenalos");
        return false;
    }
    else if(!expresion2.test(cos_sab)) {
        alert("El costo solo puede contener desde 1 carácter hasta 3 carácteres antes y despues del punto, solo puede contener números y debe llevar un punto. No debes ingresar el signo de pesos");
        return false;
    }
    else if(!expresion3.test(nom_sab)) {
        alert("El Sabor tiene que ser de 1 a 30 dígitos, solo puede contener letras y acentos");
        return false;
    }
}