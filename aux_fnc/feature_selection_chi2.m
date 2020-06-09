function [input] = feature_selection_chi2(input,output)
%FEATURE_SELECTION_CHI2 Feature selection based on chi-square tests
%   Univariate feature ranking for classification using chi-square tests
[~,scores] = fscchi2(input', output');
mask = scores > mean(scores);
input = input(mask, :);
end

