var cont=2;

function agregarIntegrante(){
c=document.getElementById("form2");
nuevoIntegrante='<a>Nombre Integrante '+cont+':</a><input type="text" name="nombreIntegrante'+cont+'" value="" >';
c.innerHTML+=nuevoIntegrante;
cont++;

}