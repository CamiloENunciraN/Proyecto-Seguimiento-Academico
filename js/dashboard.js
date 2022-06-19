
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
