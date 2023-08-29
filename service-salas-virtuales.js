// Importar dependencias
const express = require("express");
const bodyParser = require("body-parser");
const mysql = require("mysql");

// Crear la conexión a la base de datos
const database = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "<PASSWORD>",
  database: "<DATABASE_NAME>"
});

// Conectar a la base de datos
database.connect((err) => {
  if (err) throw err;
  console.log("Conexión a la base de datos exitosa.");
});

// Crear una instancia de Express
const app = express();

// Configurar el análisis de objetos JSON en el cuerpo de las solicitudes
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

// Ruta POST para recibir datos JSON y guardarlos en la base de datos
app.post("/api/data", (req, res) => {
  const data = req.body;

  // Ejemplo de Inserción de datos en la tabla 'mi_tabla'
  const query = "INSERT INTO mi_tabla (clave1, clave2) VALUES (?, ?)";
 
  database.query(query, [data.clave1, data.clave2], (err, result) => {
    if (err) {
      res.status(500).send("Error al guardar datos en la base de datos.");
      throw err;
    }
    res.status(200).send("Datos guardados exitosamente!");
  });
});

// Iniciar el servidor en el puerto 3000
app.listen(3000, () => {
  console.log("Servidor corriendo en http://localhost:3000");
});