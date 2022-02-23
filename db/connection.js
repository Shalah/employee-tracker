
// // Declaring dependencies
const inquirer = require('inquirer');
const mysql = require ('mysql2');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'rootroot',
    //database: 'employee_db'
    
},
    console.log('Connected')
);


module.exports = db;
