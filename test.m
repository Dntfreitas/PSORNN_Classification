best_number = [3,9,4,2,6,1];
method = 'MRMR';
data_base = 'PSO_parkinsons-MRMR';
name = 'parkinson';
no_neurons = [4,7,10,12,15,20];

i = 1;
for neurons = no_neurons
    net_loaded = 3;
    name_file = strcat('pso\weights\',data_base,'\',num2str(neurons), '\weights_final_',num2str(best_number(i)),'.mat');
    load(name_file)
    iw_saved = eval(strcat('PSO_',method,'_',name,'_',num2str(neurons),'.IW'));
    lw_saved = eval(strcat('PSO_',method,'_',name,'_',num2str(neurons),'.LW'));
    b_saved = eval(strcat('PSO_',method,'_',name,'_',num2str(neurons),'.b'));
    t1 = isequal(cell2mat(iw_saved), cell2mat(net.IW));
    t2 = isequal(cell2mat(lw_saved), cell2mat(net.LW));
    t3 = isequal(cell2mat(b_saved), cell2mat(net.b));
    if t1&&t2&&t3
        disp('OK')
    else
        disp('Upps')
    end
    i = i + 1;
end