/*aqui se encuentra el servidor */

const http = require('http');

const hostname = '127.0.0.1';
const port = 3000;

const server = http.createServer(webServer);


function webServer(req, res) {

  if (req.method == 'GET') {

    if (req.url == '/') {
      res.statusCode = 200;
      res.setHeader('Content-Type', 'application/json');
      res.end('Hello World');
    }else {
      res.statusCode = 200;
      res.setHeader('Content-Type', 'application/json');
      res.end('no');
    }

  }

  if (req.method == 'POST') {

    switch (req.url) {
        case "/crearMateria":
            res.writeHead(200);
            res.end(books);
            break
        case "/modificarMateria":
            res.writeHead(200);
            res.end(authors);
            break

    }


  }


}





server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
