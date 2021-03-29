DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS items;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  type INTEGER NOT NULL

);

CREATE TABLE items (
  iid INTEGER PRIMARY KEY AUTOINCREMENT,
  price FLOAT NOT NULL,
  itemName TEXT NOT NULL,
  description TEXT NOT NULL,
  type TEXT NOT NULL

);

CREATE TABLE orders (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  custID INTEGER NOT NULL,
  total FLOAT NOT NULL,
  itemName TEXT NOT NULL,
  orderItems TEXT NOT NULL,
  comments TEXT NOT NULL,
  FOREIGN KEY (custID) REFERENCES user(id)

);