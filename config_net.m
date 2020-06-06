function[NETWORKNAME]= config_net(NETWORKNAME)
NETWORKNAME.trainParam.goal = 0;
NETWORKNAME.trainParam.mu=1.0000e-003;
NETWORKNAME.trainParam.mu_inc=10; 
NETWORKNAME.trainParam.mu_dec=1; 
NETWORKNAME.trainParam.min_grad = 1.0000e-015;
NETWORKNAME.trainParam.epochs =5000; 
NETWORKNAME.trainParam.max_fail=5000;
NETWORKNAME.divideFcn='divideblock'; 
return