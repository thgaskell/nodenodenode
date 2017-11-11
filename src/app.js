const express = require('express');

const app = express();

const { MESSAGE } = process.env;

app.get('/', (req, res, next) => {
  return res.send(MESSAGE);
});

module.exports = app;
