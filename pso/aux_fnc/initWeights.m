function [w] = initWeights(nInputs, sz1, sz2)
%INITWEIGHTS Initialize the networks's
%   Initialize the networks's in the interval [-2,4/nInputs, 2.4/nInputs]
l = 2.4 * nInputs;
a = -l;
b = l;
w = (b-a).*rand(sz1, sz2) + a;
end