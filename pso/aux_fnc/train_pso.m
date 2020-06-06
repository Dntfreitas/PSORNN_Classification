function [testPerformance] = train_pso(x, t, hiddenLayerSize)
%PSO Train an ANN using PSO
%   Run PSO to train an ANN

%% Initialization
x = mapstd(x);
[ninputs, ~] = size(x);
[noutputs, ~] = size(t);
%% Create network
net = patternnet(hiddenLayerSize);
%% Network configuration
% Processing functions type: help nnprocess
net.inputs{1}.processFcns = {};
net.outputs{2}.processFcns = {};
% Configure the network
net=config_net(net);
net = configure(net,x,t);
%%  Data division
trainRatio = 70/100;
valRatio = 15/100;
testRatio = 15/100;
[trainInd,valInd,testInd] = divideblock(length(t),trainRatio,valRatio,testRatio);
trainX = x(:, trainInd);
trainT = t(:, trainInd);
validationX = x(:, valInd);
validationT = t(:, valInd);
testX = x(:, testInd);
testT = t(:, testInd);
%% Network train
net = pso(net, hiddenLayerSize, ninputs, noutputs, trainX, trainT, validationX, validationT);
%% Network test
y = net(testX);
% Calculate test performance
testPerformance = perform(net,testT,y);