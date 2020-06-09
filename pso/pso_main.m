addpath(genpath(pwd()));
dataimportMRMR

hiddenLayerSize = 10;

[net,testPerformance,accuracy] = train_pso(input_red_wine, output_red_wine, hiddenLayerSize, 'redWine', 1);