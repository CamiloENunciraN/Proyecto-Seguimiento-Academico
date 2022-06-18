//servidor creado usando express para agilidad de desarrollo
//importar libreria
import express from "express";


const PORT=3000;
//creacion del servidor
const expressApp= express();
expressApp.use(express.json());
//funcion para recibir ENDPOINT
expressApp.get('/', (req, res) => {
  res.send('Server Running');
  console.log('Server Running');
})






//funcion que escucha las peticiones
expressApp.listen(PORT, () => {
  console.log(`Server listening on port: ${PORT}`)
})




