//servidor creado usando express para agilidad de desarrollo
//importar libreria
import express from "express";
var mysql=  require('mysql');

const PORT=3000;
//creacion del servidor
const expressApp= express();
expressApp.use(express.json());
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




//funcion que escucha las peticiones
expressApp.listen(PORT, () => {
  console.log(`Server listening on port: ${PORT}`)
})




//funcion conectar y enviar peticion(query)
function usarBaseDatos(consulta){
  var conexion= mysql.createConnection({
  host: 'localhost',
  database:'BD_Acompañamiento_Ac',
  user:'root',
  password:''
  });

//inicializa la conexion y envia un mensaje de estado
conexion.connect(function(error){
  if (error) {
    throw error;
  }else{
    console.log('conexion exitosa');
  }
});
//realiza la consulta a la bd
conexion.query(consulta,function(error,results,fields){

  if (error) 
    throw error;

//return results;

//muestra los resultados en consola
results.forEach(result=>{
  console.log(result);
});

});

//finaliza la conexion a bd
conexion.end();

}