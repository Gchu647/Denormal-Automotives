-- First Table (71) unqiue makes

CREATE TABLE make_id_table (
  make_id SERIAL PRIMARY KEY,
  make_code VARCHAR(50) NOT NULL,
  make_title VARCHAR(50) NOT NULL
);

INSERT INTO make_id_table(make_code, make_title)
SELECT DISTINCT make_code, make_title
FROM car_models
ORDER BY 
  make_code ASC;

-- Second Table (1314) unqie models

CREATE TABLE model_id_table (
  model_id SERIAL PRIMARY KEY,
  model_code VARCHAR(50) NOT NULL,
  model_title VARCHAR(50) NOT NULL
);

INSERT INTO model_id_table(model_code, model_title)
SELECT DISTINCT model_code, model_title
FROM car_models
ORDER BY 
  model_code ASC;



-- Third Table an id that includes make_id and model id

CREATE TABLE car_models_id (
  id SERIAL PRIMARY KEY,
  year INTEGER NOT NULL,
  make_code VARCHAR(50) NOT NULL,
  make_title VARCHAR(50) NOT NULL,
  model_code VARCHAR(50) NOT NULL,
  model_title VARCHAR(50) NOT NULL
);

-- Inserting foreign key
ALTER TABLE car_models_id
  ADD COLUMN make_id integer;

ALTER TABLE car_models_id
  ADD CONSTRAINT make_id
    FOREIGN KEY (make_id)
    REFERENCES make_id_table(make_id);

ALTER TABLE car_models_id
  ADD COLUMN model_id integer;

ALTER TABLE car_models_id
  ADD CONSTRAINT model_id
    FOREIGN KEY (model_id)
    REFERENCES model_id_table(model_id);

INSERT INTO car_models_id(year, make_code, make_title, model_code, model_title)
SELECT DISTINCT year, make_code, make_title, model_code, model_title
FROM car_models
ORDER BY 
  year ASC;