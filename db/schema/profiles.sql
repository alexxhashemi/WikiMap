DROP TABLE IF EXISTS profiles CASCADE;

CREATE TABLE profiles (
 id SERIAL PRIMARY KEY NOT NULL,
 user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
 map_id INTEGER REFERENCES maps(id) ON DELETE CASCADE,
 favorite_id INTEGER REFERENCES favorites(id) ON DELETE CASCADE,
 contrbuted_to_map_id INTEGER
);
