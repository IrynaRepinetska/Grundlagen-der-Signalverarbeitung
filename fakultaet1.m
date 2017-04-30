function y = fakultaet1(x)
%ist x ein Skalar?
if(isscalar(x)~=1)
    error('das übegebende Argument ist kein Skalar')
end
%ist x in N?
if(round(x) ~= x || x < 0)
    error('das übegebende Argument ist keine natürliche Zahl')
end
% computation with a for loop
y=1;
for k = 1:x
    y=y*k;
end
end