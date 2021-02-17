function [net,tr,testPerformance,accuracy,tim,epochs] = train_LMA(x, t, hiddenLayerSize, name, j, IW, LW, b)
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
% If required, load the initial weights
if exist('IW', 'var') && exist('LW', 'var') && exist('b', 'var')
   net.IW = IW;
   net.LW = LW;
   net.b = b;
end
%% Data Division
net.divideParam.trainRatio=0.7;
net.divideParam.valRatio=0.15;
net.divideParam.testRatio=0.15;

%% Dir to export the data
dir = strcat('LMA/weights/',name,'/',num2str(hiddenLayerSize));
mkdir(dir)

%% Train the Network
tic
[net,tr] = train(net,x,t);
tim = toc;

% Extract the number of epochs
epochs = tr.num_epochs;

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
