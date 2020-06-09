function [feat_select,feature]=data_import_mRMR(X,Y)
[idx,scores]=fscmrmr(X,Y);
z=find(scores>mean(scores));
feature=idx(z);
feat_select=X(:,feature)';

return