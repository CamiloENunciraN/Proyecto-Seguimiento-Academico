//servidor creado usando express para agilidad de desarrollo
//importar libreria
import express from "express";


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




