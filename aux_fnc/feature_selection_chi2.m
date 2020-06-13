function [input] = feature_selection_chi2(input,output, name)
%FEATURE_SELECTION_CHI2 Feature selection based on chi-square tests
%   Univariate feature ranking for classification using chi-square tests
[idx,scores] = fscchi2(input', output');
mask = scores > mean(scores);
input = input(mask, :);

figure
yline(mean(scores), '-.r', 'LineWidth', 2)
hold on
bar(idx, scores)
xlabel('Feature number')
ylabel('Feature score')
xlabel('Feature number');
ylabel('Feature score');
%legend('Feature','Threshold', 'Location','northwest');
legend('Feature','Threshold');

title(name);
end

