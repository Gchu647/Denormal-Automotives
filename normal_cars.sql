-- First Table (71) unqiue makes

CREATE TABLE make (
  id SERIAL PRIMARY KEY,
  make_code VARCHAR(50) NOT NULL,
  make_title VARCHAR(50) NOT NULL
);

INSERT INTO make (make_code, make_title)
SELECT DISTINCT make_code, make_title
FROM car_models
ORDER BY 
  make_code ASC;

-- Second Table (1314) unqie models

CREATE TABLE model (
  id SERIAL PRIMARY KEY,
  model_code VARCHAR(50) NOT NULL,
  model_title VARCHAR(50) NOT NULL
);

INSERT INTO model(model_code, model_title)
SELECT DISTINCT model_code, model_title
FROM car_models
ORDER BY 
  model_code ASC;

-- Adding an id into car_models
ALTER TABLE car_models
  ADD COLUMN id serial PRIMARY KEY;


-- The data to insert it in
-- INSERT INTO car_models_id(year, make_id, model_id)
SELECT DISTINCT car_models.year, make.make_code, model.model_code, make.id, model.id
  FROM car_models
  INNER JOIN make ON car_models.make_code = make.make_code
  INNER JOIN model ON car_models.model_title = model.model_title
ORDER BY 
  year ASC;