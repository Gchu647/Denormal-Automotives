-- First Table (71) unqiue makes

-- CREATE TABLE make_id_table (
--   make_id SERIAL PRIMARY KEY,
--   make_code VARCHAR(50) NOT NULL,
--   make_title VARCHAR(50) NOT NULL
-- );

-- INSERT INTO make_id_table(make_code, make_title)
-- SELECT DISTINCT make_code, make_title
-- FROM car_models
-- ORDER BY 
--   make_code ASC;

-- Second Table (1314) unqie models

-- CREATE TABLE model_id_table (
--   model_id SERIAL PRIMARY KEY,
--   model_code VARCHAR(50) NOT NULL,
--   model_title VARCHAR(50) NOT NULL
-- );

-- INSERT INTO model_id_table(model_code, model_title)
-- SELECT DISTINCT model_code, model_title
-- FROM car_models
-- ORDER BY 
--   model_code ASC;



-- Third Table an id that includes make_id and model id

-- CREATE TABLE car_models_id (
--   id SERIAL PRIMARY KEY,
--   year INTEGER NOT NULL,
--   make_id REFERENCES make_id_table(make_id);
--   model_id REFERENCES model_id_table(model_id);
-- );


-- Working on getting the data and inserting it in
-- INSERT INTO car_models_id(year, make_id, model_id)
SELECT DISTINCT car_models.year, make_id_table.make_id, model_id_table.model_id
  FROM car_models
  INNER JOIN make_id_table ON car_models.make_title = make_id_table.make_title
  INNER JOIN model_id_table ON car_models.model_title = model_id_table.model_title
ORDER BY 
  year ASC;