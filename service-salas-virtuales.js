// Importar dependencias
const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql2");

// Crear la conexión a la base de datos
const database = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234",
  database: "digita683_oficina"

  //user: "digita683_salas",
  //password: "Soa1971!!",
  //database: "digita683_oficina"
});




// Crear una instancia de Express
const app = express();

// Configurar el análisis de objetos JSON en el cuerpo de las solicitudes
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// Ruta POST para recibir datos JSON y guardarlos en la base de datos
app.post("/service/1", (req, res) => {
  const data = req.body;

  // Ejemplo de Inserción de datos en la tabla 'mi_tabla'
  const query = "INSERT INTO Jugador (clave, avatar, entidad) VALUES (?, ?, ?)";

  database.query(query, [data.clave, data.avatar, data.entidad], (err, result) => {
    if (err) {
      res.status(500).json({ error : "al guardar datos en la base de datos."});
      throw err;
    }
    res.status(200).json({ ok : "Datos guardados exitosamente!"});
  });
});

// Ruta POST para recibir datos JSON y guardarlos en la base de datos
app.post("/service/2", (req, res) => {

  // Conectar a la base de datos
database.connect((err) => {
  if (err) throw err;
  console.log("Conexión a la base de datos exitosa.");
});

  const data = req.body;
  const campo_json = [data.clave];

  console.log(typeof data);
  // Uso de la función
  const query1 = "SELECT * FROM Jugador WHERE clave= ?";

  const query2 = "SELECT * FROM Jugador LEFT JOIN Rooms ON Rooms.entidad = ? WHERE Jugador.clave = ?";
   
   
   // Primera consulta
   database.query(query1, [data.clave], (error1, results1) => {
     if (error1) {
       console.error(error1);
       //res.status(500).json({ error1 : "Usuario no existe"});
       return;
     }

     const json_string = JSON.stringify(results1[0]);
     const diccionario = JSON.parse(json_string);
     const entidad = diccionario.entidad;
     console.log(typeof entidad);
     console.log(entidad);
  


     // Segunda consulta
     database.query(query2,[ entidad , data.clave], (error2, results2) => {
       if (error2) {
         console.error(error2);
         //res.status(500).json({ error1 : "no tiene salas asociadas"});
         return;
       }
       console.log("holamindo");
       // Unir resultados y transformar a JSON
       const mergedResults = {
         tabla1: results1,
         tabla2: results2
       };
   
       const jsonData = JSON.stringify(mergedResults);
       console.log(jsonData);
       console.log(typeof jsonData)
       res.status(200).json(jsonData);

     });
   });


   
});

// Defining get request at '/multiple' route
app.get('/service', function(req, res) {
  res.json({
    estado: ok,
    mensaje: 'Estamos arriba con servicio '
  });
});

// Iniciar el servidor en el puerto 3000
app.listen(3000, () => {
  console.log("Servidor corriendo en http://localhost:3000");
});

