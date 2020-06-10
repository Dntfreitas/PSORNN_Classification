clear;
clc;
close all;
addpath(genpath(pwd()));
dataimportchi2

[result_car, bestNet_car, worstNet_car] = test_LMA(input_car,output_car, 'LMA_car-CHI2');
[result_park, bestNet_park, worstNet_park] = test_LMA(input_parkinsons,output_parkinsons, 'LMA_parkinsons-CHI2');
[result_w_wine, bestNet_w_wine, worstNet_w_wine] = test_LMA(input_white_wine,output_white_wine, 'LMA_white_wine-CHI2');
[result_r_wine, bestNet_r_wine, worstNet_r_wine] = test_LMA(input_red_wine,output_red_wine, 'LMA_red_wine-CHI2');

[result_car, bestNet_car, worstNet_car] = test_PSO(input_car,output_car, 'PSO_car-CHI2');
[result_park, bestNet_park, worstNet_park] = test_PSO(input_parkinsons,output_parkinsons, 'PSO_parkinsons-CHI2');
[result_w_wine, bestNet_w_wine, worstNet_w_wine] = test_PSO(input_white_wine,output_white_wine, 'PSO_white_wine-CHI2');
[result_r_wine, bestNet_r_wine, worstNet_r_wine] = test_PSO(input_red_wine,output_red_wine, 'PSO_red_wine-CHI2');

close all;