const connection = require('../db/connection')

function viewRole() {
	//console.log("\nShow employees\n");
  
	let query =
	  `SELECT * FROM employee_role`
  
	connection.query(query, function (err, res) {
	
	  if(res){
		return console.table(res)
	  }
	  else{
		return console.log(err)
	  }
  
	  
	});
  //startingQuestions();
}

module.exports = viewRole