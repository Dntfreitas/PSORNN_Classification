%% Car data set
car = readcell('data/car.xls');
car_ord=[];
for i=1:size(car,2)-1
    car_ord=[car_ord grp2idx(categorical(car(:,i)));];
end
input_car = mapstd(car_ord)';
output_car=toOneHotEncoder(car(:,end))';
[input_car,feature_car]=data_import_mRMR(input_car',vec2ind(output_car)');

%% Parkinsons data set
parkinsons = readmatrix('data/parkinsons');
input_parkinsons  = [parkinsons(:, 1:16) parkinsons(:, 18:end)]';
input_parkinsons = mapstd(input_parkinsons);
output_parkinsons = parkinsons(:, 17);
output_parkinsons=toOneHotEncoder(output_parkinsons)';
[input_parkinsons,feature_park]=data_import_mRMR(input_parkinsons',vec2ind(output_parkinsons));

%% Red wine data set
red_wine = readmatrix('data/red_wine');
input_red_wine  = red_wine(:, 1:end-1)';
input_red_wine=mapstd(input_red_wine);
output_red_wine = toOneHotEncoder(red_wine(:, end))';
[input_red_wine,feature_red_wine]=data_import_mRMR(input_red_wine',vec2ind(output_red_wine)');

%% White wine data set
white_wine = readmatrix('data/white_wine');
input_white_wine  = white_wine(:, 1:end-1)';
input_white_wine=mapstd(input_white_wine);
output_white_wine = toOneHotEncoder(white_wine(:, end))';
[input_white_wine,feature_white_wine]=data_import_mRMR(input_white_wine',vec2ind(output_white_wine)');

