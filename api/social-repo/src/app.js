const express = require('express');
const UsersRouter = require('./routes/users');

module.exports = () => {
  const app = express();

  //PARSE JSON
  app.use(express.json());
  app.use(UsersRouter);

  return app;
};
