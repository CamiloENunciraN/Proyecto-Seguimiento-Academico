//servidor creado usando express para agilidad de desarrollo
//importar libreria
import express from "express";
import mysql from "mysql";

const mysqlApp=  mysql;


//puerto usado para el servidor htttp en node js
const PORT=3000;
//creacion del servidor
const expressApp= express();
expressApp.use(express.json());


//funcion que escucha las peticiones
expressApp.listen(PORT, () => {
  console.log(`Server listening on port: ${PORT}`)
})

/************************************************************************************/
//funcion para recibir ENDPOINT
expressApp.get('/', (req, res) => {
  res.send('<h1>Server Running...</h1><img src="https://uploads.twitchalerts.com/000/186/053/978/AW419432_04.gif">');
  console.log('Server Running');
})

//ingreso del index
expressApp.post('/entrar', (req, res) => {

console.log('Recibido:'+req.method);

  res.json({ message: 'correct' });
  console.log('respuesta:  ' );
})

/**************************************************************************************/



//usarBaseDatos('SELECT  *  FROM administrador ');
usarBaseDatos("Insert",'INSERT INTO administrador  (Codigo,Nombre) values ("1","camilo")');


//funcion conectar y enviar peticion(query)
//tipo="Insert","Select","Update","Delete"
function usarBaseDatos(tipo,consulta){
  var conexion= mysqlApp.createConnection({
  host: 'localhost',
  database:'acompanamiento_academico',
  user:'root',
  password:''
  });

//inicializa la conexion y envia un mensaje de estado
conexion.connect(function(error){
  if (error) {
    throw error;
  }else{
    console.log('conexion a base de datos exitosa');
  }
});
//realiza la consulta SELECT a la bd///////////////
conexion.query(consulta,function(error,results,fields){

  if (error) 
    throw error;

//muestra los resultados en consola
if(tipo=="Select"){

  results.forEach(result=>{
    console.log(result);
  });

}else if(tipo=="Insert"){

  console.log("Insercion realizada",results);

}else if(tipo=="Update"){
  
  console.log("Actualizacion realizada",results);

}else if(tipo=="Delete"){

  console.log("Eliminacion realizada",results);
  
}


});
//finaliza la conexion a bd
conexion.end();

}



