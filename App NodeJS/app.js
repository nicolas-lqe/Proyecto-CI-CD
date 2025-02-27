// Importar el framework Express para Node.js
const express = require('express');

const app = express();

const PORT = 3000;

// Esta función se ejecutará cuando alguien visite la URL raíz
app.get('/', (req, res) => {
    res.send('¡Hola, mundo!');  // Responder con un mensaje simple
});

app.listen(PORT, () => {
    // Mostrar mensaje en la consola una vez que el servidor esté funcionando
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});