function [wert,anzahl] = haeufigkeit(daten)
if( (isscalar(daten) ~= 1) && (isvector(daten)) ~=1 && (ndims(daten) ~= 2))
    error('Die Eingabe ist kein Skalar, keine 2x2 Matrix und keinen Vektor')
end
%vorkommende Werte
wert = unique(daten);
%vorkommende Werte aufsteigend sortiert
wert = sort(wert);
% make sure, wert is a row
if(iscolumn(wert) == 1)
    wert=transpose(wert);
end
% #rows
r = size(daten, 1);
% #cols
c = size(daten,2);
% # Werte
l = length(wert);
%create a col vector the same lenth as a wert
anzahl = zeros(1,l);

for p = 1:l
    counter = 0;
    for k = 1:r
        for t = 1:c
            if (daten(k,t) == wert(p))
                counter = counter + 1;
            end
        end
    end
    anzahl(p) = counter;
end

end
