const connection = require('../db/connection')
const inquirer = require('inquirer');

let addDepartment = () =>{
    inquirer.prompt([
        {
            type: 'input',
            name: 'departmentName',
            message: 'What is the name of the department?'
        }
    ])

	//console.log("\nShow employees\n");

    .then((answer) => {
        let query = `INSERT INTO department (id, name)
            VALUES (id, ?)`;
        connection.query(query, answer.departmentName, (err, res) =>{
            if(err){
                return console.log(err)
            }
            else{
                console.log(`${answer.departmentName}. Department created!` )
            }
        })
    })
	
  //startingQuestions();
}

module.exports = addDepartment