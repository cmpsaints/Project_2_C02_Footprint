
/* Populate database with starter data
========================================================================================== */



/* -----------------------------------------------------------------
 user accounts table - STARTER USER
----------------------------------------------------------------- */

/*
CREATE TABLE IF NOT EXISTS users_tbl (
	user_id INT AUTO_INCREMENT NOT NULL,
	user_name VARCHAR(20) UNIQUE NOT NULL,
	password_hash VARCHAR(255) NOT NULL,
	
	PRIMARY KEY (user_id)
);
*/

INSERT INTO users_tbl (user_name, password_hash) VALUES ("jdoe-01", "ofioij099efads6345fwafrw");



/* -----------------------------------------------------------------
 food categories table - DATA FOR STATIC TABLE
----------------------------------------------------------------- */

/*
CREATE TABLE food_categories_tbl (
	food_category_id TINYINT AUTO_INCREMENT NOT NULL,
	food_category_name VARCHAR(25) UNIQUE NOT NULL,
	
	PRIMARY KEY (category_id)
);
*/

/*
- beverages (id 1)

- fruits & veggies (id 2)

- milks (id 3)

- misc (chocolates) (id 4)

- proteins (id 5)

- starches (id 6)
*/

INSERT INTO food_categories_tbl (food_category_name) 
VALUES ("beverages"), ("fruitsAndVeggies"), ("milks"), ("misc"), ("proteins"), ("starches");



/* ----------------------------------------------------------------------
 data for tables of each food category - DATA FOR STATIC TABLES
---------------------------------------------------------------------- */

/*
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
*/

INSERT INTO beverages_tbl (beverage_name) 
VALUES 
("beer"), 
("coffee"), 
("orangeJuice"), 
("tea"), 
("wine");

INSERT INTO fruitsAndVeggies_tbl (fruitVeggie_name) 
VALUES 
("apples"), 
("avocados"), 
("bananas"), 
("berriesAndGrapes"), 
("carrots"), 
("citrusFruit"), 
("corn"), 
("tomatoes"), 
("veggieGreens");

INSERT INTO milks_tbl (milk_name) 
VALUES 
("milkAlmond"), 
("milkDairy"), 
("milkOat"), 
("milkRice"), 
("milkSoy");

INSERT INTO misc_tbl (misc_item_name) 
VALUES 
("chocolate"), 
("chocolateDark");

INSERT INTO proteins_tbl (protein_name) 
VALUES 
("beans"), 
("beef"), 
("cheese"), 
("chicken"), 
("eggs"), 
("fishFarmed"), 
("lamb"), 
("nuts"), 
("peas"), 
("pork"), 
("shrimpPrawnsFarmed"), 
("tofu");

INSERT INTO starches_tbl (starch_name) 
VALUES 
("bread"), 
("oatmeal"), 
("rice"), 
("pasta"), 
("potatoes");



/* -----------------------------------------------------------------
 foods table, entire listing - DATA FOR STATIC TABLE
----------------------------------------------------------------- */

/* CREATE TABLE foods_tbl (
    food_id TINYINT AUTO_INCREMENT NOT NULL,
	
    food_name VARCHAR(25) UNIQUE NOT NULL,
	food_type_id TINYINT NOT NULL,
	
	serving_size VARCHAR(40) NOT NULL,
	
	carbon_use NUMERIC(5,3) NOT NULL,
	water_use NUMERIC(5,1),
	land_use NUMERIC(4,1),
	
    PRIMARY KEY (food_id)
); */

INSERT INTO foods_tbl (food_name, food_type_id, serving_size, carbon_use, water_use, land_use) 
VALUES 
	("apples", 2, "1 apple", 0.033, 14.4, NULL), 
	("avocados", 2, "1/2 avocado", 0.197, 45.0, NULL), 
	("bananas", 2, "1 banana", 0.068, 9.1, NULL), 
	("beans", 5, "1/3 can", 0.099, 24.4, NULL), 
	("beef", 5, "size of 1 average burger patty", 7.726, NULL, 22.2), 
	("beer", 1, "1 pint", 0.666, 9.7, NULL), 
	("berriesAndGrapes", 2, "1 handful", 0.121, 33.4, NULL), 
	("bread", 6, "1 slice", 0.058, 24.6, NULL), 
	("carrots", 2, "1/2 cup", 0.032, NULL, NULL), 
	("cheese", 5, "equivalent to area of 2 crackers", 0.964, 226.6, 3.5), 
	("chicken", 5, "1 small chicken breast", 1.362, 91.2, 1.7), 
	("chocolate", 4, "1 bar", 1.027, 72.4, 1.9), 
	("chocolateDark", 4, "1 bar", 1.482, 24.8, 2.1), 
	("citrusFruit", 2, "1 whole fruit", 0.030, NULL, NULL), 
	("coffee", 1, "1 cup", 0.425, NULL, NULL), 
	("corn", 2, "1/2 cup", 0.032, NULL, NULL), 
	("eggs", 5, "2 eggs", 0.553, 68.8, NULL), 
	("fishFarmed", 5, "1 fillet", 1.871, 506.9, NULL), 
	("lamb", 5, "2 lamb chops", 4.334, NULL, 40.4), 
	("milkAlmond", 3, "1 glass (200 ml)", 0.140, 74.1, NULL), 
	("milkDairy", 3, "1 glass (200 ml)", 0.627, 125.3, 1.8), 
	("milkOat", 3, "1 glass (200 ml)", 0.178, 9.6, NULL), 
	("milkRice", 3, "1 glass (200 ml)", 0.236, 53.8, NULL), 
	("milkSoy", 3, "1 glass (200 ml)", 0.195, NULL, NULL), 
	("nuts", 5, "1 handful", 0.014, 133.3, NULL), 
	("oatmeal", 6, "6 tbsp cooked (approx 2/5 cup)", 0.104, 20.6, NULL), 
	("orangeJuice", 1, "1 glass", 0.425, NULL, NULL), 
	("pasta", 6, "75 g cooked (approx 1 1/4 cups)", 0.118, 57.5, NULL), 
	("peas", 5, "80 g (approx 1/2 cup)", 0.016, NULL, NULL), 
	("pork", 5, "75 g (equal to 3 bacon slices)", 1.797, 262.3, 2.5), 
	("potatoes", 6, "2 small potatoes", 0.044, NULL, NULL), 
	("rice", 6, "9 tbsp cooked (approx 1/2 cup)", 0.332, 168.2, NULL), 
	("shrimpPrawnsFarmed", 5, "8 large shrimp or 5 jumbo (king prawns)", 3.441, 450.5, NULL), 
	("tea", 1, "1 cup (1 tea bag)", 0.041, NULL, NULL), 
	("tofu", 5, "100 g (approx 1/2 cup)", 0.159, 7.5, NULL), 
	("tomatoes", 2, "1 tomato", 0.164, 29.5, NULL), 
	("veggieGreens", 2, "1/2 cup", 0.031, NULL, NULL), 
	("wine", 1, "1 medium glass", 0.312, 13.8, NULL);



/* ---------------------------------------------------------------------------
 consumption tables for each food item - STARTER DATA FROM STARTER USER
--------------------------------------------------------------------------- */	

/* CREATE TABLE apples_consumption_tbl (

	entry_num INT AUTO_INCREMENT NOT NULL,
	
	person_id INT NOT NULL,
	
	servings_eaten TINYINT NOT NULL,
	
	date_eaten DATE DEFAULT CURRENT_DATE NOT NULL,
	
	PRIMARY KEY (entry_num)
); */

INSERT INTO apples_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO avocados_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 0, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 0, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 1, "2019-01-07"),
(1, 0, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO bananas_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 1, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 0, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 2, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 1, "2019-01-10");

INSERT INTO beans_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 0, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 3, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 2, "2019-01-10");

INSERT INTO beef_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 3, "2019-01-02"),
(1, 2, "2019-01-03"),
(1, 1, "2019-01-04"),
(1, 1, "2019-01-05"),
(1, 3, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 2, "2019-01-09"),
(1, 3, "2019-01-10");

INSERT INTO beer_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 1, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 1, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 1, "2019-01-10");

INSERT INTO berriesAndGrapes_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 1, "2019-01-01"),
(1, 0, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 1, "2019-01-07"),
(1, 1, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 2, "2019-01-10");

INSERT INTO bread_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 0, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 2, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 2, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO carrots_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 2, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 0, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO cheese_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 3, "2019-01-01"),
(1, 4, "2019-01-02"),
(1, 5, "2019-01-03"),
(1, 2, "2019-01-04"),
(1, 2, "2019-01-05"),
(1, 2, "2019-01-06"),
(1, 5, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 4, "2019-01-09"),
(1, 3, "2019-01-10");

INSERT INTO chicken_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 0, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 0, "2019-01-03"),
(1, 1, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 0, "2019-01-08"),
(1, 2, "2019-01-09"),
(1, 1, "2019-01-10");

INSERT INTO chocolate_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO chocolateDark_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO citrusFruit_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO coffee_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO corn_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO eggs_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO fishFarmed_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO lamb_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO milkAlmond_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO milkDairy_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 1, "2019-01-04"),
(1, 1, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 1, "2019-01-09"),
(1, 2, "2019-01-10");

INSERT INTO milkOat_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 1, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 0, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 1, "2019-01-05"),
(1, 0, "2019-01-06"),
(1, 1, "2019-01-07"),
(1, 0, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 1, "2019-01-10");

INSERT INTO milkRice_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 0, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 0, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 0, "2019-01-07"),
(1, 0, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO milkSoy_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 0, "2019-01-01"),
(1, 0, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 0, "2019-01-07"),
(1, 1, "2019-01-08"),
(1, 1, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO nuts_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO oatmeal_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO orangeJuice_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO pasta_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO peas_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO pork_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO potatoes_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO rice_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO shrimpPrawnsFarmed_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO tea_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO tofu_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 2, "2019-01-08"),
(1, 1, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO tomatoes_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 2, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 0, "2019-01-10");

INSERT INTO veggieGreens_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 1, "2019-01-10");

INSERT INTO wine_consumption_tbl (person_id, servings_eaten, date_eaten) 
VALUES 
(1, 2, "2019-01-01"),
(1, 1, "2019-01-02"),
(1, 1, "2019-01-03"),
(1, 0, "2019-01-04"),
(1, 0, "2019-01-05"),
(1, 1, "2019-01-06"),
(1, 2, "2019-01-07"),
(1, 3, "2019-01-08"),
(1, 0, "2019-01-09"),
(1, 1, "2019-01-10");





/* =====================================================================================

- beverages (id 1)

- fruits & veggies (id 2)

- milks (id 3)

- misc (chocolates) (id 4)

- proteins (id 5)

- starches (id 6)


------------------------------
------------------------------


X apples

X avocados

X bananas

X beans

X beef

X beer

X berries & grapes

X bread

X carrots

X cheese

X chicken

X chocolate

X chocolate (dark)

X citrus fruit

X coffee

X corn

X eggs

X fish (farmed)

X lamb

X milk (almond)

X milk (dairy)
  
X milk (oat)

X milk (rice)

X milk (soy)

X nuts

X oatmeal

X orange juice

X pasta

X peas

X pork

X potatoes

X rice

X shrimp/prawns (farmed)

X tea

X tofu

X tomatoes

X veggie greens

X wine


------------------------------
------------------------------


- fruits & veggies (id 2):

  - avocados

  - tomatoes

  - berries & grapes

  - bananas

  - apples

  - citrus fruit

  - carrots

  - corn

  - veggie greens

=====

- proteins (id 5):

  - beef

  - lamb

  - shrimp/prawns (farmed)

  - fish (farmed)

  - pork

  - chicken

  - cheese

  - eggs

  - tofu

  - beans

  - peas

  - nuts

=====

- beverages (id 1):

  - beer

  - coffee

  - wine

  - tea

  - orange juice

=====

- starches (id 6):

  - rice

  - pasta

  - oatmeal

  - bread

  - potatoes

=====

- misc (chocolates) (id 4):

  - dark chocolate

  - chocolate

=====

- milks (id 3):

  - dairy milk

  - rice milk

  - soy milk

  - oat milk

  - almond milk


------------------------------
------------------------------


- fruits & veggies (id 2):

X  - avocados

		2,	1/2 = serving,			0.197 Kg CO2,		45.0 L water

X  - tomatoes

		2,	1 = serving,			0.164 Kg CO2,		29.5 L water

X  - berries & grapes

		2,	1 handful = serving,	0.121 Kg CO2,		33.4 L water

X  - bananas

		2,	1 = serving,			0.068 Kg CO2,		9.1 L water

X  - apples

		2,	1 = serving,			0.033 Kg CO2,		14.4 L water

X  - citrus fruit

		2,	1 = serving,			0.030 Kg CO2,		...

X  - carrots

		2,	1/2 cup = serving,		0.032 Kg CO2,		...

X  - corn

		2,	1/2 cup = serving,		0.032 Kg CO2,		...

X  - veggie greens

		2,	1/2 cup = serving,		0.031 Kg CO2,		...

=====

- proteins (id 5):

X  - beef

		5,	1 fast food burger patty = serving,		7.726 Kg CO2,	22.2 m2 land

X  - lamb

		5,	2 lamb chops = serving,					4.334 Kg CO2,	40.4 m2 land

X  - shrimp/prawns (farmed)

		5,	8 large shrimp or 5 jumbo (king prawns) = serving,		3.441 Kg CO2,	450.5 L water

X  - fish (farmed)

		5,	1 fillet = serving,						1.871 Kg CO2,	506.9 L water

X  - pork

		5,	75 g (equal to 3 bacon slices) = serving,	1.797 Kg CO2,	262.3 L water,	2.5 m2 land

X  - chicken

		5,	1 small chicken breast = serving,			1.362 Kg CO2,	91.2 L water,	1.7 m2 land

X  - cheese

		5,	equivalent to area of 2 crackers = serving,		0.964 Kg CO2,	226.6 L water,	3.5 m2 land

X  - eggs

		5,	2 eggs = serving,						0.553 Kg CO2,	68.8 L water

X  - tofu

		5,	100 g (approx 1/2 cup) = serving,		0.159 Kg CO2,	7.5 L water

X  - beans

		5,	1/3 can = serving,						0.099 Kg CO2,	24.4 L water

X  - peas

		5,	80 g (approx 1/2 cup) = serving,		0.016 Kg CO2,	...

X  - nuts

		5,	1 handful = serving,					0.014 Kg CO2,	133.3 L water

=====

- beverages (id 1):

X  - beer

		1,	1 pint = serving,				0.666 Kg CO2,	9.7 L water

X  - coffee

		1,	1 cup = serving,				0.425 Kg CO2,	...

X  - wine

		1,	1 medium glass = serving,		0.312 Kg CO2,	13.8 L water

X  - tea

		1,	1 cup (1 tea bag) = serving,	0.041 Kg CO2,	...

X  - orange juice

		1,	1 glass = serving,				0.425 Kg CO2,	...

=====

- starches (id 6):

X  - rice

		6,	9 tbsp cooked (approx 1/2 cup) = serving,		0.332 Kg CO2,	168.2 L water

X  - pasta

		6,	75 g cooked (approx 1 1/4 cups) = serving,		0.118 Kg CO2,	57.5 L water

X  - oatmeal

		6,	6 tbsp cooked (approx 2/5 cup) = serving,		0.104 Kg CO2,	20.6 L water

X  - bread

		6,	1 slice = serving,								0.058 Kg CO2,	24.6 L water

X  - potatoes

		6,	2 small potatoes = serving,						0.044 Kg CO2,	...

=====

- misc (chocolates) (id 4):

X  - dark chocolate

		4,	1 bar = serving,		1.482 Kg CO2,	24.8 L water,	2.1 m2 land

X  - chocolate

		4,	1 bar = serving,		1.027 Kg CO2,	72.4 L water,	1.9 m2 land

=====

- milks (id 3):

X  - dairy milk

		3,	1 glass (200 ml) = serving,		0.627 Kg CO2,	125.3 L water,	1.8 m2 land

X  - rice milk

		3,	1 glass (200 ml) = serving,		0.236 Kg CO2,	53.8 L water

X  - soy milk

		3,	1 glass (200 ml) = serving,		0.195 Kg CO2,	...

X  - oat milk

		3,	1 glass (200 ml) = serving,		0.178 Kg CO2,	9.6 L water

X  - almond milk

		3,	1 glass (200 ml) = serving,		0.140 Kg CO2,	74.1 L water


===================================================================================== */










