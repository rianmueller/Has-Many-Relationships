DROP TABLE IF EXISTS users;

CREATE TABLE users
(
    id serial PRIMARY KEY,
    username VARCHAR(90) UNIQUE NOT NULL,
    first_name VARCHAR(90) DEFAULT NULL,
    last_name VARCHAR(90) DEFAULT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

DROP TABLE IF EXISTS posts;

CREATE TABLE posts
(
    id serial PRIMARY KEY,
    title VARCHAR(180) DEFAULT NULL,
    url VARCHAR(510) DEFAULT NULL,
    content TEXT DEFAULT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    users_id int REFERENCES users (id) NOT NULL
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments
(
    id serial PRIMARY KEY,
    body VARCHAR(510) DEFAULT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    users_id int REFERENCES users (id) NOT NULL,
    posts_id int REFERENCES posts (id) NOT NULL
);