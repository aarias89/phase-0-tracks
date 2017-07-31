CREATE TABLE IF NOT EXISTS restaurant_type(
  id INTEGER PRIMARY KEY,
  cuisine_type VARCHAR(255)
);

INSERT INTO restaurant_type (cuisine_type) VALUES ('fast food');
INSERT INTO restaurant_type (cuisine_type) VALUES ('diner');
INSERT INTO restaurant_type (cuisine_type) VALUES ('mexican');
INSERT INTO restaurant_type (cuisine_type) VALUES ('italian');


CREATE TABLE IF NOT EXISTS restaurants(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  avg_price INT,
  location VARCHAR(255),
  type INT,
  FOREIGN KEY(type) REFERENCES restaurant_type(id)
);

INSERT INTO(name,avg_price,location,type) VALUES('wendys',6,'various','fast food');
INSERT INTO(name,avg_price,location,type) VALUES('tops diner',12,'newark','diner');
INSERT INTO(name,avg_price,location,type) VALUES('chevys',10,'clifton','mexican');
INSERT INTO(name,avg_price,location,type) VALUES('maggianos',15,'bridgewater','italian');

