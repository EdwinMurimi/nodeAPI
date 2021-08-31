const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: "localhost",
  database: "nodeapi",
  user: "root",
  password: ""
});

module.exports = connection;