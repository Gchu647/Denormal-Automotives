-- 5) There are (71) different makes(brand) of cars
-- SELECT DISTINCT make_title
-- FROM car_models;

-- 6) Just the volks brand alone there is (27) models
-- SELECT DISTINCT model_title 
-- FROM car_models 
-- WHERE make_code='VOLKS'; 

-- 7) There are (136) different cars made by 'LAM'
-- a lot of repetitive cars because it was separated by different year 
-- SELECT DISTINCT make_code, model_code, model_title, year 
-- FROM car_models 
-- WHERE make_code='LAM';

-- 8) listing car models between 2010 and 2015
-- SELECT DISTINCT *
-- FROM car_models
-- WHERE year BETWEEN 2010 AND 2015;
