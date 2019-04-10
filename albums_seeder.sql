USE codeup_test_db;
TRUNCATE albums;

INSERT INTO albums(artist, name, release_date, sales, genre)
VALUES ('Michael Jackson', 'Thriller',1982, 47.3, 'Pop, rock, R&B'),
('Eagles', 'Their Greatest Hits', 1976, 41.2, 'Country rock, soft rock, folk rock'),
('AC/DC', 'Back in Black', 1980, 26.1, 'Hard rock'),
('Pink FLoyd', 'The Dark Side of the Moon', 1973, 24.2,'Progressive rock'),
('The Beatles', 'Sgt. Pepper''s Lonely Heart Club Band', 1967, 18.2, 'Rock'),
('Nirvana','Nevermind', 1991, 16.7, 'Grunge, alternative rock');