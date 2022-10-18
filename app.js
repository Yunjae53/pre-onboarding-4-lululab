const express = require("express");
require("express-async-errors");
const router = require("./routes/index");
const morgan = require("morgan");
const cors = require("cors");
const errorHandler = require("./middlewares/errorHandler");

const createApp = () => {
  const app = express();

  app.use(express.json());
  app.use(morgan("dev"));
  app.use(cors());
  app.use(router);
  app.use(errorHandler);

  return app;
};

module.exports = { createApp };
