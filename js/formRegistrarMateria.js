
llenarHoras();




function registrarMateria(){

let nombre=document.getElementById("nombre");
alert("Materia "+nombre.value+" Reistrada con exito");

window.location.href= "../dashboard.html";
}


function llenarHoras(){
	let c=document.getElementById("hora");
	c.options[0]= new Option('Seleccione');
	for (var i = 0; i < 24; i++) {
		c.options[i+1]= new Option(i);
	}
}

