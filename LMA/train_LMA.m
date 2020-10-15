function [net,tr,testPerformance,accuracy] = train_LMA(x, t, hiddenLayerSize, name, j)
%% Initialization
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
net = config_net(net);
net = configure(net,x,t);

%% Data Division
net.divideParam.trainRatio=0.7;
net.divideParam.valRatio=0.15;
net.divideParam.testRatio=0.15;

% Train the Network
[net,tr] = train(net,x,t);

% Export data
save(strcat(dir,'/weights_final_',num2str(j),'.mat'),'net')

%% Network Testing
testX = x(:,tr.testInd);
testT = t(:,tr.testInd);
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
