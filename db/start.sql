CREATE DATABASE carles_database;
CREATE DATABASE hackergramdb;

CREATE USER 'python'@'localhost' IDENTIFIED BY 'blog.carlesmateo.com-db-password';
CREATE USER 'python'@'%' IDENTIFIED BY 'blog.carlesmateo.com-db-password';
CREATE USER 'hackergram'@'localhost' IDENTIFIED BY 'hackergrampass';
CREATE USER 'hackergram'@'%' IDENTIFIED BY 'hackergrampass';

GRANT ALL PRIVILEGES ON carles_database.* TO 'python'@'localhost';
GRANT ALL PRIVILEGES ON carles_database.* TO 'python'@'%';
GRANT ALL PRIVILEGES ON hackergramdb.* TO 'hackergram'@'localhost';
GRANT ALL PRIVILEGES ON hackergramdb.* TO 'hackergram'@'%';

USE carles_database;

CREATE TABLE car_queue (
    i_id_car int,
    s_model_code varchar(25),
    s_color_code varchar(25),
    s_extras varchar(100),
    i_right_side int,
    s_city_to_ship varchar(25)
);

INSERT INTO car_queue (i_id_car, s_model_code, s_color_code, s_extras, i_right_side, s_city_to_ship) VALUES (1, "GOLF2021", "BLUE7", "COND_AIR, GPS, MULTIMEDIA_V3", 0, "Barcelona");
INSERT INTO car_queue (i_id_car, s_model_code, s_color_code, s_extras, i_right_side, s_city_to_ship) VALUES (2, "GOLF2021_PLUGIN_HYBRID", "BLUEMETAL_5", "COND_AIR, GPS, MULTIMEDIA_V3, SECURITY_V5", 1, "Cork");
