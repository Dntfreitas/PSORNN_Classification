function [result, bestNet, worstNet] = test_LMA(input,output, name)

hiddenLayerSize =[4,7,10,12,15,20] ;

NET={};
TR={};
perf=[];
acc=[];
time=[];
epochs=[];

for i=1:length(hiddenLayerSize)
    for j=1:10
	    [net,tr,testPerformance,accuracy,t,e] = train_LMA(input, output, hiddenLayerSize(i), name, j);
	    NET{i,j}=net;
	    TR{i,j}=tr;
	    perf(i,j)=testPerformance;
	    acc(i,j)=accuracy;  
        time(i,j)=t;
        epochs(i,j)=e;
    end
end

result = results(hiddenLayerSize,acc,time,epochs);
header = {'No. hidden','Best Acc','Worst Acc', 'Mean', 'STD', 'Mean Time', 'STD Time', 'Mean Epochs', 'STD Epochs'};
outputCSV = array2table(result, 'VariableNames', header);
writetable(outputCSV,strcat(name,'.csv'))

% Get best and worst MSE
best_acc = max(max(acc));
worst_acc = min(min(acc));

% Get the best ANN
[Pos_row,Pos_colum]=find(acc == best_acc);   
bestNet = NET{Pos_row,Pos_colum};

% Export Conf. + ROC
n_hidden = hiddenLayerSize(Pos_row);
n_hidden = n_hidden(1);
n_rep = Pos_colum;
n_rep = n_rep(1);
src_conf = strcat('LMA/weights/',name,'/',num2str(n_hidden),'/',num2str(n_rep),'_conf.fig');
src_roc = strcat('LMA/weights/',name,'/',num2str(n_hidden),'/',num2str(n_rep),'_roc.fig');
copyfile(src_conf, strcat('LMA/weights/',name,'/best_conf.fig'), 'f');
copyfile(src_roc, strcat('LMA/weights/',name,'/best_roc.fig'), 'f');

% Get the worst ANN
[Pos_row,Pos_colum]=find(acc == worst_acc);   
worstNet = NET{Pos_row,Pos_colum};

% Export Conf. + ROC
n_hidden = hiddenLayerSize(Pos_row);
n_hidden = n_hidden(1);
n_rep = Pos_colum;
n_rep = n_rep(1);
src_conf = strcat('LMA/weights/',name,'/',num2str(n_hidden),'/',num2str(n_rep),'_conf.fig');
src_roc = strcat('LMA/weights/',name,'/',num2str(n_hidden),'/',num2str(n_rep),'_roc.fig');
copyfile(src_conf, strcat('LMA/weights/',name,'/worst_conf.fig'), 'f');
copyfile(src_roc, strcat('LMA/weights/',name,'/worst_roc.fig'), 'f');

% Export data
save(strcat('LMA/weights/',name,'/weights_best.mat'),'bestNet')
save(strcat('LMA/weights/',name,'/weights_worst.mat'),'worstNet')