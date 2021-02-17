clear;
clc;
close all;
addpath(genpath(pwd()));
dataimportMRMR

[result_car_LMA, bestNet_car_LMA, worstNet_car_LMA] = test_LMA(input_car,output_car, 'LMA_car-MRMR');
[result_park_LMA, bestNet_park_LMA, worstNet_park_LMA] = test_LMA(input_parkinsons,output_parkinsons, 'LMA_parkinsons-MRMR');
[result_w_wine_LMA, bestNet_w_wine_LMA, worstNet_w_wine_LMA] = test_LMA(input_white_wine,output_white_wine, 'LMA_white_wine-MRMR');
[result_r_wine_LMA, bestNet_r_wine_LMA, worstNet_r_wine_LMA] = test_LMA(input_red_wine,output_red_wine, 'LMA_red_wine-MRMR');

[result_car, bestNet_car, worstNet_car] = test_PSO(input_car,output_car, 'PSO_car-MRMR');
[result_park, bestNet_park, worstNet_park] = test_PSO(input_parkinsons,output_parkinsons, 'PSO_parkinsons-MRMR');
[result_w_wine, bestNet_w_wine, worstNet_w_wine] = test_PSO(input_white_wine,output_white_wine, 'PSO_white_wine-MRMR');
[result_r_wine, bestNet_r_wine, worstNet_r_wine] = test_PSO(input_red_wine,output_red_wine, 'PSO_red_wine-MRMR');

[result_car, bestNet_car, worstNet_car] = test_LMA(input_car,output_car, 'LMA_hybrid_car-MRMR', true, 'pso_car.mat', 'car', 'MRMR');
[result_park, bestNet_park, worstNet_park] = test_LMA(input_parkinsons,output_parkinsons, 'LMA_hybrid_parkinsons-MRMR', true, 'pso_parkinson.mat', 'parkinson', 'MRMR');
[result_w_wine, bestNet_w_wine, worstNet_w_wine] = test_LMA(input_white_wine,output_white_wine, 'LMA_hybrid_white_wine-MRMR', true, 'pso_whitewine.mat', 'whitewine', 'MRMR');
[result_r_wine, bestNet_r_wine, worstNet_r_wine] = test_LMA(input_red_wine,output_red_wine, 'LMA_hybrid_red_wine-MRMR', true, 'pso_redwine.mat', 'redwine', 'MRMR');

close all;
