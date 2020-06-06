function [net,tr,testPerformance] = train_LMA(x, t, hiddenLayerSize)
%% Initialization
x = mapstd(x);
[ninputs, ~] = size(x);
[noutputs, ~] = size(t);
%% Create network
trainFcn = 'trainlm';
net = patternnet(hiddenLayerSize,trainFcn);
%% Network configuration
% Processing functions type: help nnprocess
net.inputs{1}.processFcns = {};
net.outputs{2}.processFcns = {};
% Configure the network
net=config_net(net);
net = configure(net,x,t);
%% Data Division
net.divideParam.trainRatio=0.7;
net.divideParam.valRatio=0.15;
net.divideParam.testRatio=0.15;

% Train the Network
[net,tr] = train(net,x,t);

%% Network Testing
testX = x(:,tr.testInd);
testT = t(:,tr.testInd);
testY = net(testX);
%testIndices = vec2ind(testY);


testPerformance = perform(net,testT,testY)

