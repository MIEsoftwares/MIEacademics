const express = require('express');
const app = express();
const cors = cors();
const router = require('./router');

app.use(express.json());
app.use(router);
app.use(cors());

app.options({"origin": "*",
"methods": "GET,HEAD,PUT,PATCH,POST,DELETE",
"preflightContinue": false,
"optionsSuccessStatus": 204}, cors());

module.exports = app;