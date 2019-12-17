CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY NOT NULL,
    recipe_name VARCHAR(45) NOT NULL
);
CREATE TABLE recipe_ingredients (
    recipe_ingredients_id SERIAL PRIMARY KEY NOT NULL,
    ingredient_qty INT,
    recipe_id INT REFERENCES recipes(recipe_id),
    ingredient_id INT REFERENCES ingredients(ingredient_id)
);
CREATE TABLE ingredients (
    ingredient_id SERIAL PRIMARY KEY NOT NULL,
    ingredient_name VARCHAR(45) NOT NULL
);
CREATE TABLE recipe_directions (
    recipe_direction_id SERIAL PRIMARY KEY NOT NULL,
    direction_number INT NOT NULL,
    direction_text VARCHAR(250) NOT NULL,
    recipe_id INT REFERENCES recipes(recipe_id)
);

ALTER TABLE recipe_ingredients 
ALTER COLUMN ingredient_qty type VARCHAR(45);

INSERT INTO recipes VALUES (DEFAULT, 'Arepas');

INSERT INTO ingredients VALUES(DEFAULT, 'Water');
INSERT INTO ingredients VALUES(DEFAULT, 'Harina PAN');
INSERT INTO ingredients VALUES(DEFAULT, 'Salt');
INSERT INTO ingredients VALUES(DEFAULT, 'Oil');

INSERT INTO recipe_ingredients VALUES(DEFAULT, '2 cups', 1, 1);
INSERT INTO recipe_ingredients VALUES(DEFAULT, '1 cups', 1, 2);
INSERT INTO recipe_ingredients VALUES(DEFAULT, '1 teaspoon', 1, 3);
INSERT INTO recipe_ingredients VALUES(DEFAULT, '1 teaspoon', 1, 4);

INSERT INTO recipe_directions VALUES(DEFAULT, 1, 'mix all the ingredients to form a dough', 1);
INSERT INTO recipe_directions VALUES(DEFAULT, 2, 'with a spoon take a piece to form a round ball', 1);
INSERT INTO recipe_directions VALUES(DEFAULT, 3, 'flatten the ball and place it into a cast iron', 1);

CREATE TABLE shopping_list (
    item_id SERIAL PRIMARY KEY NOT NULL,
    item_qty INT,
    item_name VARCHAR(45) NOT NULL
);
INSERT INTO shopping_list VALUES (DEFAULT, 1, 'Milk');
INSERT INTO shopping_list VALUES (DEFAULT, 2, 'Bread');
INSERT INTO shopping_list VALUES (DEFAULT, 1, 'Cheese');
INSERT INTO shopping_list VALUES (DEFAULT, 6, 'Apples');

SELECT item_qty, item_name FROM shopping_list;

--ALTER TABLE recipe_ingredients
--ALTER COLUMN ingredient_qty TYPE VARCHAR(45);
INSERT INTO recipes VALUES (DEFAULT, 'Mac n Cheese');
INSERT INTO recipes VALUES (DEFAULT, 'Pasta Pomodoro');
INSERT INTO ingredients VALUES (DEFAULT, 'Pasta');
INSERT INTO ingredients VALUES (DEFAULT, 'Milk');
INSERT INTO ingredients VALUES (DEFAULT, 'Butter');
INSERT INTO ingredients VALUES (DEFAULT, 'Cheedar Cheese');
INSERT INTO ingredients VALUES (DEFAULT, 'Tomato Sauce');
INSERT INTO ingredients VALUES (DEFAULT, 'Meatballs');
INSERT INTO ingredients VALUES (DEFAULT, 'Parmesan Cheese');
INSERT INTO ingredients VALUES (DEFAULT, 'Spaghetti');
INSERT INTO recipe_ingredients VALUES (DEFAULT, '1lb', 1, 1);
INSERT INTO recipe_ingredients VALUES (DEFAULT, '1cup', 1, 2);
INSERT INTO recipe_ingredients VALUES (DEFAULT, '1/2cup', 1, 3);
INSERT INTO recipe_ingredients VALUES (DEFAULT, '2cups', 1, 4);
INSERT INTO recipe_ingredients VALUES (DEFAULT, '2cups', 2, 5);
INSERT INTO recipe_ingredients VALUES (DEFAULT, '1/2lbs', 2, 6);
INSERT INTO recipe_ingredients VALUES (DEFAULT, '1cup', 2, 7);
INSERT INTO recipe_ingredients VALUES (DEFAULT, '1lbs', 2, 8);
INSERT INTO recipe_directions VALUES (DEFAULT, 1, 'Cook Pasta', 1);
INSERT INTO recipe_directions VALUES (DEFAULT, 2, 'Add butter, milk and cheese', 1);
INSERT INTO recipe_directions VALUES (DEFAULT, 3, 'Mix ingredients', 1);
INSERT INTO recipe_directions VALUES (DEFAULT, 1, 'Cook pasta and meatballs separately', 2);
INSERT INTO recipe_directions VALUES (DEFAULT, 2, 'Mix with tomato sauce', 2);
INSERT INTO recipe_directions VALUES (DEFAULT, 3, 'Add parmesan cheese', 2);