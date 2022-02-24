const connection = require('../db/connection')
const inquirer = require('inquirer');

let addRole = () => {
	inquirer.prompt([
		{
			type: 'input',
			name: 'roleName',
			message: 'What is the name of the role?'
		},
		{
			type: 'input',
			name: 'roleSalary',
			message: 'What is the salary of the role?'
		},
		{
			type: 'list',
			name: 'departmentType',
			message: 'Which department does the role belong to?',
			choices: ['Engineering', 'Finance', 'Legal', 'Sales', 'Service']
		}
	])

	.then((answer) =>{
		// let query = `INSERT INTO role SET ?
        //     VALUES (id, ?)`;
		let deptID;
        for (let i = 0; i < res.length; i++) {
          	if (res[d].name == answer.departmentName) {
            deptID = res[d].department_id;
        	}
        }
        connection.query("INSERT INTO role SET ?",
			{
				title: answer.title,
				salary: answer.salary,
				department_id: deptID,
			}, (err, res) =>{
            if(err){
                return console.log(err)
            }
            else{
                console.log(`Role created!`)
            }
        })
	})





};

module.exports = addRole;