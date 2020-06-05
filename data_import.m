%% Car data set
car = readcell('data/car.xls');
car = toOneHotEncoder(car);
input_car  = car(:, 1:end-4)';
output_car = car(:, end-3:end)';
%% Parkinsons data set
parkinsons = readmatrix('data/parkinsons');
input_parkinsons  = [parkinsons(:, 1:16) parkinsons(:, 18:end)]';
output_parkinsons = parkinsons(:, 17)';
%% Red wine data set
red_wine = readmatrix('data/red_wine');
input_red_wine  = red_wine(:, 1:end-1)';
output_red_wine = toOneHotEncoder(red_wine(:, end))';
%% White wine data set
white_wine = readmatrix('data/white_wine');
input_white_wine  = white_wine(:, 1:end-1)';
output_white_wine = toOneHotEncoder(white_wine(:, end))';