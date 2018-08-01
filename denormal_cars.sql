-- CREATE USER denormal_user;
-- CREATE DATABASE denormal_cars OWNER denormal_user;

-- 5)
-- SELECT DISTINCT make_title 
-- FROM car_models;

-- 6)
-- SELECT DISTINCT model_title 
-- FROM car_models 
-- WHERE make_code='VOLKS'; 

-- 7)
-- SELECT DISTINCT make_code, model_code, model_title, year 
-- FROM car_models 
-- WHERE make_code='LAM';

-- 8)
SELECT DISTINCT car_models
FROM car_models
WHERE year BETWEEN 2010 AND 2015;
