const connection = require('../db/connection')

function viewDepartment() {
	//console.log("\nShow employees\n");
  
	let query =
	  `SELECT * FROM department`
  
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

module.exports = viewDepartment