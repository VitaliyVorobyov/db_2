INSERT INTO artists (artist_name) VALUES
  ('David Coverdale'),
  ('Offspring'),
  ('Our Last Night'),
  ('The Rolling Stones');

INSERT INTO genres (genre_name) VALUES
  ('Rock'),
  ('Pop'),
  ('Classical');

INSERT INTO albums (album_name, release_year) VALUES
  ('Fun', 2020),
  ('Sunshine', 2019),
  ('Winter', 2018);

INSERT INTO tracks (track_name, duration, album_id) VALUES
  ('Weekend', 180, 1),
  ('The Last', 200, 1),
  ('Baby', 310, 2),
  ('My Last Night', 300, 2),
  ('Winter', 420, 3),
  ('Seasons', 380, 3);

INSERT INTO compilations (compilation_name, release_year) VALUES
  ('Variety', 2017),
  ('New Year', 2020),
  ('Another Year', 2018),
  ('Best', 2019);

INSERT INTO artists_genres (artist_id, genre_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 1);

INSERT INTO artists_albums (artist_id, album_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 1);

INSERT INTO compilations_tracks (compilation_id, track_id) VALUES
  (1, 1),
  (1, 2),
  (2, 3),
  (2, 4),
  (3, 5),
  (4, 6);