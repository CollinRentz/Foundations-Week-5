CREATE TABLE user(
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(20),
    password VARCHAR(20),
    username VARCHAR(20)
);
CREATE TABLE recipe (
    recipe_id SERIAL PRIMARY KEY,
    recipe_name VARCHAR(40),
    user_id INTEGER NOT NULL REFERENCES user(user_id),
    ingredients_id INTEGER NOT NULL REFERENCES ingredients(ingredients_id)
);
CREATE TABLE ingredients (
    ingredients_id SERIAL PRIMARY KEY,
    ingredients_name VARCHAR(20),
    user_id INTEGER NOT NULL REFERENCES user(user_id),
    grocery_list_id INTEGER NOT NULL REFERENCES grocery_list(grocery_list_id)
);