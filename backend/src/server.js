const app = require('./app');
require('dotenv').config

const PORT = process.env.PORT || 3333;


app.listen(PORT, function(){
    console.log(`The connection in PORT:${PORT} has been sucess`);
});