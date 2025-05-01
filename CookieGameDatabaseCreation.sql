-- Recreate the database
DROP DATABASE IF EXISTS cookie_game;
CREATE DATABASE cookie_game;

use cookie_game;

-- Create table for users
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    cookies INT DEFAULT 0
);

-- Create table for cookies (e.g., chocolate chip, double chocolate)
CREATE TABLE cookies (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    click_bonus INT DEFAULT 0,
    multiplier FLOAT DEFAULT 1.0,
    rarity enum ("Common", "Uncommon", "Rare", "Epic", "Legendary")
);

-- Create table for user's inventory (many-to-many relationship between users and cookies)
CREATE TABLE inventory (
    user_id INT,
    cookie_id INT,
    PRIMARY KEY (user_id, cookie_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (cookie_id) REFERENCES cookies(id)
);

INSERT INTO cookies (name, click_bonus, multiplier, rarity) VALUES
('Chocolate Chip', 1, 1.1, "Common"),
('Oatmeal', 2, 1.05, "Common"),
('Peanut Butter', 3, 1.2, "Common"),
('Sugar', 1, 1.15, "Common"),
('Double Chocolate', 4, 1.3, "Uncommon"),
('Mint', 2, 1.25, "Uncommon"),
('Strawberry', 1, 1.05, "Uncommon"),
('Cinnamon', 3, 1.1, "Rare"),
('Almond', 5, 1.4, "Epic"),
('Mochi', 2, 1.3, "Legendary");

select * from cookies;
select * from users;
select * from inventory;