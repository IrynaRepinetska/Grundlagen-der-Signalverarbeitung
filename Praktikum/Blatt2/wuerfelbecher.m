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
%die maximale Augensumme, die entstehen kann
max = wuerfel * max_augenziffer;
%augensumme hat so viele Elemente wie die Zahl der Wuerfe
augensumme = randi([1 max], 1, wuerfe);
end
