function s = summe(x)
% number of elements in x
N = numel(x);
s = sum(x);
if(isrow(s)==1)
    s = sum(s);
end
s = s/N;
