%% Car data set
car = readcell('data/car.xls');
car_ord=[];
for i=1:size(car,2)-1
    car_ord=[car_ord grp2idx(categorical(car(:,i)));];
end
input_car = mapstd(car_ord)';
output_car = car(:, end)';
input_car = feature_selection_chi2(input_car, output_car, 'Car Evaluation Dataset');
output_car = toOneHotEncoder(car(:,end))';
%% Parkinsons data set
parkinsons = readmatrix('data/parkinsons');
input_parkinsons  = [parkinsons(:, 1:16) parkinsons(:, 18:end)]';
input_parkinsons = mapstd(input_parkinsons);
output_parkinsons = parkinsons(:, 17)';
input_parkinsons = feature_selection_chi2(input_parkinsons, output_parkinsons, 'Parkinsons Dataset');
output_parkinsons = toOneHotEncoder(parkinsons(:, 17))';
%% Red wine data set
red_wine = readmatrix('data/red_wine');
input_red_wine  = red_wine(:, 1:end-1)';
input_red_wine = mapstd(input_red_wine);
output_red_wine = red_wine(:, end)';
input_red_wine = feature_selection_chi2(input_red_wine, output_red_wine, 'Red Wine Dataset');
output_red_wine = toOneHotEncoder(red_wine(:, end))';
%% White wine data set
white_wine = readmatrix('data/white_wine');
input_white_wine  = white_wine(:, 1:end-1)';
input_white_wine = mapstd(input_white_wine);
output_white_wine = white_wine(:, end)';
input_white_wine = feature_selection_chi2(input_white_wine, output_white_wine, 'White Wine Dataset');
output_white_wine = toOneHotEncoder(white_wine(:, end))';