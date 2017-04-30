function y = fakultaet2(x)
%ist x ein Skalar?
if(isscalar(x) ~= 1)
    error('das übegebende Argument ist kein Skalar')
end
%ist x in N?
if(floor(x) ~= x || x<0)
    error('das übegebende Argument ist keine natürliche Zahl')
end
%recursion
if(x == 0)
    y=1;
else
    y=x*fakultaet2(x-1);
end

end
