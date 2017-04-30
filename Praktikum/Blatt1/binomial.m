function y = binomial(n,k)
%are there 2 input parameters?
if(nargin ~= 2)
    error('Die Anzahl von Eingabeparametern ist nicht zwei')
end
% are n and k scalar?
if(isscalar(n)~=1 || isscalar(k)~=1)
    error('Eines von den übegebenden Argumenten ist kein Skalar')
end
% ist n in R
if(isreal(n) ~= 1)
    error('Das erste Argument ist keine reele Zahl')
end
%ist k in N
if(floor(k) ~= k || k<0)
    error('Das zweite Argument ist keine natürliche Zahl')
end
%Berechnung
unten = fakultaet3(k);
if(n >= 0)
    v = [n-k+1:1:n];
else
    v = [n:-1:n-k+1];
end
oben = prod(v);
y = oben/unten;
   
end
