function [net, testPerformance,accuracy,tim,i] = train_pso(x, t, hiddenLayerSize, name, j)
%PSO Train an ANN using PSO
%   Run PSO to train an ANN

%% Initialization
[ninputs, ~] = size(x);
[noutputs, ~] = size(t);
%% Create network
net = patternnet(hiddenLayerSize);
%% Network configuration
% Processing functions type: help nnprocess
net.inputs{1}.processFcns = {};
net.outputs{2}.processFcns = {};
% Configure the network
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

% Dir to export the data
dir = strcat('pso/weights/',name,'/',num2str(hiddenLayerSize));
mkdir(dir)

%% Network train
tic
[net, i] = pso(net, hiddenLayerSize, ninputs, noutputs, trainX, trainT, validationX, validationT, dir, j);
tim = toc;

% Export data
save(strcat(dir,'/weights_final_',num2str(j),'.mat'),'net')

%% Network Testing
testY = sim(net,testX);
testIndices = vec2ind(testY);

testPerformance = perform(net,testT,testY);
% confusion Matrix

a = confusionmat(vec2ind(testT),vec2ind(testY));

% Accuracy
accuracy=sum(diag(a))/numel(testIndices)*100;


figure, plotconfusion(testT,testY)
savefig(strcat(dir,'/',num2str(j),'_conf.fig'));
figure, plotroc(testT,testY)
savefig(strcat(dir,'/',num2str(j),'_roc.fig'));