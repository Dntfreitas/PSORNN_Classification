addpath(genpath(pwd()));
dataimportMRMR

hiddenLayerSize = 10;

[net,tr,testPerformance,accuracy] = train_LMA(input_red_wine, output_red_wine, hiddenLayerSize, 'redWine', 1);