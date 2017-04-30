function y = fakultaet3(x)
%ist x ein Skalar?
if(isscalar(x)~=1)
    error('das übegebende Argument ist kein Skalar')
end
%ist x in N?
if(round(x) ~= x || x < 0)
    error('das übegebende Argument ist keine natürliche Zahl')
end
% vector erzeugen 
v = [1 : x];
% fakultaet berechnen
y=prod(v);
end