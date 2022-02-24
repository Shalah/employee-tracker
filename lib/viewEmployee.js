const connection = require('../db/connection')

//const app = require('app')

function viewEmployee() {
	//console.log("\nShow employees\n");
  
	let query =
	  `SELECT * FROM employee`
  
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

module.exports = viewEmployee