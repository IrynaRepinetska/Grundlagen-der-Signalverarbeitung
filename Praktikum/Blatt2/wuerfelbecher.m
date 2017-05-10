%Gruppenname: iryna&philipp
%562366 Iryna Repinetska
%565229 Philipp Waldinger
function [augensumme] = wuerfelbecher(wuerfel, wuerfe, max_augenziffer)
if(ceil(wuerfel) ~= wuerfel || wuerfel <=0)
    error('Die Anzahl der Wuerfeln im Becher sollte eine nat. Zahl größer Null sein.')
end
if(ceil(max_augenziffer) ~= max_augenziffer || max_augenziffer <=0)
    error('Die maximale Anzahl der Wuerfelaugen sollte eine nat. Zahl größer Null sein.')
end
if(ceil(wuerfe) ~= wuerfe || wuerfe <=0)
    error('Die Wuerfeanzahl sollte eine nat. Zahl größer Null sein.')
end

m = randi([1 max_augenziffer], wuerfel, wuerfe);
augensumme = sum (m);
end
