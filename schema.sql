-- Create table genre
CREATE TABLE genre(
    id 			INTEGER NOT NULL PRIMARY KEY,
    name 		VARCHAR(255) NOT NULL
);

-- Create table author
CREATE TABLE author(
    id              INTEGER NOT NULL PRIMARY KEY,
    first_name      VARCHAR(20),
	last_name       VARCHAR(20)
);

-- Create table game
CREATE TABLE game(
    id              INTEGER NOT NULL PRIMARY KEY,
    author          INTEGER NOT NULL,
    publish_date    DATE NOT NULL,
    archived        BOOLEAN NOT NULL,
    last_played_at  DATE NOT NULL,
	multiplayer     BOOLEAN NOT NULL,
    FOREIGN KEY (author)
        REFERENCES author (id)
);


--To create label table
CREATE TABLE labels (
	id			integer GENERATED ALWAYS AS IDENTITY,
	title		varchar(50),
	color		varchar(50),
	PRIMARY KEY(id)
)


--To create books table
CREATE TABLE books (
	book_id					integer GENERATED ALWAYS AS IDENTITY,
	label_id 				integer,
	FOREIGN KEY (label_id) 	REFERENCES labels(id),
	publish_date			date,
	archived				boolean not null default false,
	publisher				varchar(50),
	cover_state				varchar(50),
	PRIMARY KEY(book_id)
)
