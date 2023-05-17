DROP TABLE IF EXISTS userInfo;
DROP TABLE IF EXISTS javaScriptCode;
DROP TABLE IF EXISTS cssCode;
DROP TABLE IF EXISTS htmlCode;
DROP TABLE IF EXISTS sqlCode;
DROP TABLE IF EXISTS serverCode;
DROP TABLE IF EXISTS seedCode;
DROP TABLE IF EXISTS jQueryCode;
DROP TABLE IF EXISTS gitCode;

CREATE TABLE userInfo(
    id SERIAL PRIMARY KEY,
    author VARCHAR(500) NOT NULL,
    experience VARCHAR(2000)NOT NULL,
    linkedIn VARCHAR(100) NOT NULL,
    adminVerifier VARCHAR(3)
);
CREATE TABLE javaScriptCode(
    id SERIAL,
    title VARCHAR(20),
    author_id INTEGER REFERENCES userInfo(id),
    author VARCHAR(50),
    problem VARCHAR(500),
    solution VARCHAR(500),
    formulas VARCHAR(500),
    verified VARCHAR(3),
    post_date TIMESTAMP WITH TIME ZONE
);
CREATE TABLE cssCode(
    id SERIAL,
    title VARCHAR(20),
    author_id INTEGER REFERENCES userInfo(id),
    author VARCHAR(50),
    problem VARCHAR(500),
    solution VARCHAR(5000),
    formulas VARCHAR(500),
    verified VARCHAR(3),
    post_date TIMESTAMP WITH TIME ZONE
);
CREATE TABLE htmlCode(
    id SERIAL,
    title VARCHAR(20),   
    author_id INTEGER REFERENCES userInfo(id),
    author VARCHAR(50),
    problem VARCHAR(500),
    solution VARCHAR(5000),
    formulas VARCHAR(500),
    verified VARCHAR(3),
    post_date TIMESTAMP WITH TIME ZONE
);
CREATE TABLE sqlCode(
    id SERIAL,
    title VARCHAR(20),
    author_id INTEGER REFERENCES userInfo(id),
    author VARCHAR(50),
    problem VARCHAR(500),
    solution VARCHAR(5000),
    formulas VARCHAR(500),
    verified VARCHAR(3),
    post_date TIMESTAMP WITH TIME ZONE
);
CREATE TABLE serverCode(
    id SERIAL,
    title VARCHAR(20),
    author_id INTEGER REFERENCES userInfo(id),
    author VARCHAR(50),
    problem VARCHAR(500),
    solution VARCHAR(5000),
    formulas VARCHAR(500),
    verified VARCHAR(3),
    post_date TIMESTAMP WITH TIME ZONE
);
CREATE TABLE seedCode(
    id SERIAL,
    title VARCHAR(20),
    author_id INTEGER REFERENCES userInfo(id),
    author VARCHAR(50),
    problem VARCHAR(500),
    solution VARCHAR(500),
    formulas VARCHAR(500),
    verified VARCHAR(3),
    post_date TIMESTAMP WITH TIME ZONE
);
CREATE TABLE jQueryCode(
    id SERIAL,
    title VARCHAR(20),
    author_id INTEGER REFERENCES userInfo(id),
    author VARCHAR(50),
    problem VARCHAR(500),
    solution VARCHAR(500),
    formulas VARCHAR(500),
    verified VARCHAR(3),
    post_date TIMESTAMP WITH TIME ZONE
);
CREATE TABLE gitCode(
    id SERIAL,
    title VARCHAR(20),
    author_id INTEGER REFERENCES userInfo(id),
    author VARCHAR(50),
    problem VARCHAR(500),
    solution VARCHAR(500),
    formulas VARCHAR(500),
    verified VARCHAR(3),
    post_date TIMESTAMP WITH TIME ZONE
);