CREATE DATABASE BookMyShow;
USE BookMyShow;
CREATE TABLE Theatre (
    theatre_id INT PRIMARY KEY,
    theatre_name VARCHAR(255),
    location VARCHAR(255),
    capacity INT
);

CREATE TABLE Movie (
    movie_id INT PRIMARY KEY,
    movie_title VARCHAR(255),
    genre VARCHAR(255),
    duration INT
);

CREATE TABLE Shows (
    show_id INT PRIMARY KEY,
    theatre_id INT,
    movie_id INT,
    show_date DATE,
    show_time TIME,
    FOREIGN KEY (theatre_id) REFERENCES Theatre(theatre_id),
    FOREIGN KEY (movie_id) REFERENCES Movie(movie_id)
);
