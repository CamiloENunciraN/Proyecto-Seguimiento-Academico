

//enviando a la pagina de registro
function registrarse(){
window.location.href="html/register.html";
}


//al dar en ingresar
 function ingresar() {

let correo=document.getElementById('correo').value;
let contra=document.getElementById('contrasena').value;

//validarcion de los datos
if(correo==""){
  alert("ingrese correo");
}else if(contra==""){
  alert("ingrese contraseña");
}else{
// envio de la informacion

var url = 'http://localhost:3000/entrar';
var data = {correo: correo,
            contrasena: contra};

fetch(url, {
  method: 'POST', // or 'PUT'
  body: JSON.stringify(data), // data can be `string` or {object}!
  mode: 'no-cors',
  headers:{
    'Content-Type': 'application/json',
    'Access-Control-Allow-Origin': '*'
  }
})
.then(response => response.json())
.then(response => {
  console.log(response.message);
})
/*
.then(response => response.json()) 
.then(json => console.log(json))
.catch(err => console.log(err))
;
*/

}


}