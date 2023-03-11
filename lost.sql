CREATE DATABASE lost;
USE lost;
CREATE TABLE tour(
    tour_id INT,
    tour_name VARCHAR(32) NOT NULL,
    tour_length INT NOT NULL,
    tour_fee INT NOT NULL,
    PRIMARY KEY (tour_id)
);
CREATE TABLE guide(
    guide_id INT,
    guide_name VARCHAR(32) NOT NULL,
    guide_address VARCHAR(46) NOT NULL,
    guide_doh DATE NOT NULL, 
    PRIMARY KEY (guide_id)
);
CREATE TABLE outing(
    outing_id INT,
    tour_id INT NOT NULL,
    outing_datetime DATETIME NOT NULL,
    guide_id INT NOT NULL, 
    PRIMARY KEY (outing_id)
);
CREATE TABLE client(
    client_id INT,
    client_name VARCHAR(32) NOT NULL,
    phone_number INT NOT NULL, 
    PRIMARY KEY (client_id)
);
CREATE TABLE qualification(
	tour_id INT,
    guide_id INT,
    qualified_date DATE NOT NULL, 
    PRIMARY KEY (tour_id,guide_id)
);
CREATE TABLE location(
	location_id INT,
    location_name VARCHAR(32) NOT NULL,
    location_type VARCHAR(32) NOT NULL,
    official_description VARCHAR(255) NOT NULL, 
    PRIMARY KEY (location_id)
);
CREATE TABLE outing_clients(
	outing_id INT,
    client_id INT, 
    PRIMARY KEY (outing_id,client_id)
);
CREATE TABLE tour_locations(
	tour_id INT,
    location_id INT,
    location_order INT NOT NULL,
    PRIMARY KEY (tour_id, location_id, location_order)
);
ALTER TABLE outing ADD FOREIGN KEY (tour_id) REFERENCES tour(tour_id);
ALTER TABLE outing ADD FOREIGN KEY (guide_id) REFERENCES guide(guide_id);
ALTER TABLE qualification ADD FOREIGN KEY (tour_id) REFERENCES tour(tour_id);
ALTER TABLE qualification ADD FOREIGN KEY (guide_id) REFERENCES guide(guide_id);
ALTER TABLE outing_clients ADD FOREIGN KEY (outing_id) REFERENCES outing(outing_id);
ALTER TABLE outing_clients ADD FOREIGN KEY (client_id) REFERENCES client(client_id);
ALTER TABLE tour_locations ADD FOREIGN KEY (tour_id) REFERENCES tour(tour_id);
ALTER TABLE tour_locations ADD FOREIGN KEY (location_id) REFERENCES location(location_id);