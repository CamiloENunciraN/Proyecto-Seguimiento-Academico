

document.getElementById("iniciar").onclick = function(){
window.location.href= "../index.html";
}



function registrarse(){

let nombre=document.getElementById("nombre");
alert("Usuario "+nombre.value+" Registrado con exito");

window.location.href= "../index.html";
}