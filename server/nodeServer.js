// Server configuration
const config = require('../config/env.js');
const express = require('express');
const app = express();
const port = config.PORT;
const host = config.HOST;

app.listen(port, host, () => {
  console.log(`Running on http://${host}:${port}`);
});

// Server functions
app.get('/hello-world', function (request, response){
  response.json({"content":"Hello World"});
  console.log(response);
  response.end();
});

