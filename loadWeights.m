function weights = loadWeights(fileName, database, method)
%% Loading the weights of every number of hidden units
load(fileName);

hid_neu=[4,7,10,12,15,20];

weights= {};
for number_neurons = hid_neu
   var_name=strcat('PSO_',method,"_",database,"_",num2str(number_neurons));
   IW=eval(strcat(var_name,'.IW'));
   LW=eval(strcat(var_name,'.LW'));
   b=eval(strcat(var_name,'.b'));
   weights{number_neurons,1} = IW;
   weights{number_neurons,2} = LW;
   weights{number_neurons,3} = b;
end



return





