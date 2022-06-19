
llenarHoras();



function registrarMateria() {
alert("test");
}


function llenarHoras(){
	let c=document.getElementById("hora");
	c.options[0]= new Option('Seleccione');
	for (var i = 0; i < 24; i++) {
		c.options[i+1]= new Option(i);
	}
}