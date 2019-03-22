DROP DATABASE IF EXISTS diet_co2_footprint_db;
CREATE DATABASE diet_co2_footprint_db;

USE diet_co2_footprint_db;



/* -----------------------------------------------------------------
 user accounts table
----------------------------------------------------------------- */

CREATE TABLE IF NOT EXISTS users_tbl (
	user_id INT AUTO_INCREMENT NOT NULL,
	user_name VARCHAR(20) UNIQUE NOT NULL,
	password_hash VARCHAR(255) NOT NULL,
	
	PRIMARY KEY (user_id)
);


/* -----------------------------------------------------------------
 food categories table
----------------------------------------------------------------- */

CREATE TABLE food_categories_tbl (
    food_category_id TINYINT AUTO_INCREMENT NOT NULL,
    food_category_name VARCHAR(25) UNIQUE NOT NULL,
	
    PRIMARY KEY (food_category_id)
);


/* -----------------------------------------------------------------
 tables for each food category
----------------------------------------------------------------- */

CREATE TABLE beverages_tbl (
	beverage_id TINYINT AUTO_INCREMENT NOT NULL,
	beverage_name VARCHAR(25) UNIQUE NOT NULL,
	
	PRIMARY KEY (beverage_id)
);

CREATE TABLE fruitsAndVeggies_tbl (
	fruitVeggie_id TINYINT AUTO_INCREMENT NOT NULL,
	fruitVeggie_name VARCHAR(25) UNIQUE NOT NULL,
	
	PRIMARY KEY (fruitVeggie_id)
);

CREATE TABLE milks_tbl (
	milk_id TINYINT AUTO_INCREMENT NOT NULL,
	milk_name VARCHAR(25) UNIQUE NOT NULL,
	
	PRIMARY KEY (milk_id)
);

CREATE TABLE misc_tbl (
	misc_item_id TINYINT AUTO_INCREMENT NOT NULL,
	misc_item_name VARCHAR(25) UNIQUE NOT NULL,
	
	PRIMARY KEY (misc_item_id)
);

CREATE TABLE proteins_tbl (
	protein_id TINYINT AUTO_INCREMENT NOT NULL,
	protein_name VARCHAR(25) UNIQUE NOT NULL,
	
	PRIMARY KEY (protein_id)
);

CREATE TABLE starches_tbl (
	starch_id TINYINT AUTO_INCREMENT NOT NULL,
	starch_name VARCHAR(25) UNIQUE NOT NULL,
	
	PRIMARY KEY (starch_id)
);


/* ----------------------------------------------------------------------
 foods table, entire listing (with CO2, water, and land equivalents)
---------------------------------------------------------------------- */

CREATE TABLE foods_tbl (
    food_id TINYINT AUTO_INCREMENT NOT NULL,
	
    food_name VARCHAR(25) UNIQUE NOT NULL,
	food_type_id TINYINT NOT NULL,
	
	serving_size VARCHAR(40) NOT NULL,
	
	carbon_use NUMERIC(5,3) NOT NULL,
	water_use NUMERIC(5,1),
	land_use NUMERIC(4,1),
	
    PRIMARY KEY (food_id)
);


/* -----------------------------------------------------------------
 tables for consumption of each food item (38 tables)
----------------------------------------------------------------- */

CREATE TABLE apples_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE avocados_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE bananas_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE beans_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE beef_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE beer_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE berriesAndGrapes_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE bread_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE carrots_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE cheese_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE chicken_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE chocolate_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE chocolateDark_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE citrusFruit_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE coffee_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE corn_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE eggs_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE fishFarmed_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE lamb_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE milkAlmond_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE milkDairy_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE milkOat_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE milkRice_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE milkSoy_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE nuts_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE oatmeal_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE orangeJuice_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE pasta_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE peas_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE pork_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE potatoes_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE rice_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE shrimpPrawnsFarmed_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE tea_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE tofu_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE tomatoes_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE veggieGreens_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);

CREATE TABLE wine_consumption_tbl (
	
	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT DEFAULT 0 NOT NULL,

	date_eaten TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
	
	PRIMARY KEY (entry_num)
);














/* ================================================================================


// eaten_status BOOLEAN DEFAULT 0 NOT NULL,

// creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL








CREATE DATABASE IF NOT EXISTS testing_foreignkey_db;


CREATE TABLE persons_tbl (
	
	user_id INT AUTO_INCREMENT NOT NULL,
	password INT NOT NULL,
	age INT NOT NULL,
	PRIMARY KEY (user_id)
);

CREATE TABLE orders_tbl (

	order_id INT AUTO_INCREMENT NOT NULL,
	item VARCHAR(20) NOT NULL,
	person_id INT,

	PRIMARY KEY (order_id),
	FOREIGN KEY (person_id) REFERENCES persons_tbl(user_id)
);


INSERT INTO persons_tbl (password, age) 
VALUES 
	(2428943, 12),
	(53434, 16),
	(4542, 20);

INSERT INTO orders_tbl (item, person_id) 
VALUES 
	("chips", 2),
	("candy", 1),
	("pants", 3);






CREATE DATABASE IF NOT EXISTS testing_datestamp_db;


CREATE TABLE datestamp_tbl (
	
	user_id INT AUTO_INCREMENT NOT NULL,
	password VARCHAR(20) NOT NULL,
	date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	
	PRIMARY KEY (user_id)
);


INSERT INTO datestamp_tbl (password) 
VALUES ("afoerio"), ("apofieorfdf"), ("aoiiperer");

INSERT INTO datestamp_tbl (password, date_created) 
VALUES ("sffdfio", "2019-01-23"), ("aposfdfdf", "2019-01-23"), ("afsfdfsd", "2019-01-23");



================================================================================ */














