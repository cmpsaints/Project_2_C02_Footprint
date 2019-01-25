var express = require("express");
var app = express();


var mysql = require('mysql');

var connection = mysql.createConnection({
    host: "localhost",

    port: 3306,

    user: "root",

    password: "Qwerttyy123_",
    database: "diet_co2_footprint_db"
});


// set the view engine to ejs
app.set("view engine", "ejs");


//----------
// setting up Body Parser so that we can access `req.body`
	
// making sure `body-parser` is set up so that we can use `req.body` in `app.post` requests
	var bodyParser = require("body-parser");

// parse application/x-www-form-urlencoded
	app.use( bodyParser.urlencoded({extended: false}) );

// parse application/json
	app.use( bodyParser.json() );
//----------



/* --------------------------------------------------
 Queries to & Responses from App
------------------------------------------------------- */


// for beverages -------------------------



app.post("/beverages", function(req, res) {
	
	
	connection.query(
		"INSERT INTO beer_consumption_tbl (person_id, servings_eaten) VALUES (?, ?)", 
		[req.body.per_id, req.body.serv_eaten], 
		function (error, results, fields) {
			if (error) throw error;
	  
			res.redirect("/");
		}
	);
	
	connection.query(
		"INSERT INTO coffee_consumption_tbl (person_id, servings_eaten) VALUES (?, ?)", 
		[req.body.question, req.body.difficulty], 
		function (error, results, fields) {
			if (error) throw error;
	  
			res.redirect("/");
		}
	);
	
	connection.query(
		"INSERT INTO orangeJuice_consumption_tbl (person_id, servings_eaten) VALUES (?, ?)", 
		[req.body.question, req.body.difficulty], 
		function (error, results, fields) {
			if (error) throw error;
			
		}
	);
	
	connection.query(
		"INSERT INTO tea_consumption_tbl (person_id, servings_eaten) VALUES (?, ?)", 
		[req.body.question, req.body.difficulty], 
		function (error, results, fields) {
			if (error) throw error;
			
		}
	);
	
	connection.query(
		"INSERT INTO wine_consumption_tbl (person_id, servings_eaten) VALUES (?, ?)", 
		[req.body.question, req.body.difficulty], 
		function (error, results, fields) {
			if (error) throw error;
			
		}
	);
	
	
	res.redirect("/");
	
	
	
	
	
	
});









app.post("/beverages", function(req, res) {
	
	
	/* for each food item in category, perform:
	
		- send data of amount in field to database
		- ( making sure data for each field is sent to the apppropriate food table )
	
	afterwards redirect */
	
	
	
	// mysql connection will pass data into `result` parameter (response back) after query/request is successful
	connection.query("SELECT beverage_name FROM beverages_tbl", function (error, results, fields) {
		if (error) throw error;
		
		var foodItems = results;
		
		// foodItems.length;
		
		// foodItems[i].beverage_name;
		
		
		for (var i = 0; i < foodItems.length; i++) {
			
			var table = "beer_consumption_tbl";
			
			connection.query (
				"INSERT INTO " + table + " (person_id, servings_eaten) VALUES (?, ?)", 
				[req.body.per_id, req.body.serv_eaten],   // per_id & serv_eaten are values of name attributes in form
				
				function (error, results, fields) {
					if (error) throw error;
				}
			);
		}
		
		
		
		
		
		
		
		var table = "beer_consumption_tbl";
		
		connection.query (
			"INSERT INTO " + table + " (person_id, servings_eaten) VALUES (?, ?)", 
			[req.body.per_id, req.body.serv_eaten], 
			
			function (error, results, fields) {
				if (error) throw error;
			}
		);
		
		
	});
	
	
	
	for (var i = 0; i < req);
	var table = "beer_consumption_tbl";
	
	var post
	
	connection.query (
		"INSERT INTO " + table + " (person_id, servings_eaten) VALUES (?, ?)", 
		[req.body.per_id, req.body.serv_eaten], 
		
		function (error, results, fields) {
			if (error) throw error;
		}
	);
	
	res.redirect("/");
	
});






/* app.get("/", function(req, res) {
	
	// mysql connection will pass info into `result` parameter (response back) after query/request is successful
	connection.query("SELECT * FROM questions", function (error, results, fields) {
		if (error) throw error;
		
		res.render("pages/form", {
			data: results
		});
	});
}); */





































// for fruits & veggies -------------------------

app.post("/submit", function(req, res) {

	
	connection.query(
		"INSERT INTO questions (question, difficulty) VALUES (?, ?)", 
		[req.body.question, req.body.difficulty], 
		function (error, results, fields) {
			if (error) throw error;
			
			res.redirect("/");
		}
	);
	
	connection.query(
		"INSERT INTO questions (question, difficulty) VALUES (?, ?)", 
		[req.body.question, req.body.difficulty], 
		function (error, results, fields) {
			if (error) throw error;
			
			res.redirect("/");
		}
	);
});

// for milks -------------------------

// for misc -------------------------

// for proteins -------------------------

// for starches -------------------------





app.get("/", function(req, res) {
	
	// mysql connection will pass info into `result` parameter (response back) after query/request is successful
	connection.query("SELECT * FROM questions", function (error, results, fields) {
		if (error) throw error;
		
		res.render("pages/form", {
			data: results
		});
	});
});




































































// ====================

app.listen(3000, function() {
	console.log("listening on port 3000...");
});












