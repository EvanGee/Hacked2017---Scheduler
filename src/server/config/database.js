var mysql = require('mysql');

module.exports  = mysql.createPool({
    user: "root",
    password: "toor",
    database: "Scheduler"
});
