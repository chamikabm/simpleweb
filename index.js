const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hi There!!');
});

app.listen(8080, () => {
  console.log('Listning on Port 8080.');
});