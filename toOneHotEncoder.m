function [r] = toOneHotEncoder(dataset)
%TOONEHOTENCODER Converts a categorical dataset into one hot encoder
%   Receives the dataset and outputs the encoded dataset

[~, n_col] = size(dataset);
r = [];
for n = 1:n_col
	smp = dataset(:, n);
	smp = categorical(smp);
	d = dummyvar(smp);
    r = horzcat(r, d);
end
end