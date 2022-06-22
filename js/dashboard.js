

document.getElementById("nombre_usuario").textContent=sessionStorage.getItem("nombre");


cargarMenus();


function cargarFrame(direccion) {

 let f=document.getElementById("ifram");
 f.src=direccion;
}


function volverInicio() {
  location.href="dashboard.html";
}



function cerrarSesion() {
  //cerrar la sesion y luego
  location.href="../index.html";
}


///carga el menu de opiones de acuerdo al tipo de usuario
function  cargarMenus(){

let t=sessionStorage.getItem('tipo');
//console.log(t);
if (t=="administrador") {

document.getElementById("formMatricularMateria").style.display="none";
document.getElementById("list_actividad").style.display="none";
document.getElementById("list_grupo").style.display="none";
document.getElementById("list_estudiante").style.display="none";
document.getElementById("list_subActividad").style.display="none";

}else if (t=="docente")    {

document.getElementById("list_materia").style.display="none";
document.getElementById("list_estudiante").style.display="none";
document.getElementById("list_subActividad").style.display="none";

}else if (t=="estudiante")    {

document.getElementById("formRegistrarMateria").style.display="none";
document.getElementById("formModificarMateria").style.display="none";
document.getElementById("formEliminarMateria").style.display="none";
document.getElementById("list_actividad").style.display="none";
document.getElementById("list_informe").style.display="none";


}else{
  alert("Tipo  de usuario desconocido");
  location.href="../index.html";
}

}