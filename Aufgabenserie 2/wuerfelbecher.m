function [ augensumme ] = wuerfelbecher( wuerfel, wuerfe, max_augenziffer )

if (ceil(wuerfel) ~= floor(wuerfel)) || (numel(wuerfel) ~= 1) || (wuerfel < 0)
    error('The number of dices to throw must be a non-negative integer!');
end

if (ceil(wuerfe) ~= floor(wuerfe)) || (numel(wuerfe) ~= 1) || (wuerfe < 0)
    error('The number of throws must be a non-negative integer!');
end

if (ceil(max_augenziffer) ~= floor(max_augenziffer)) || (numel(max_augenziffer) ~= 1) || (max_augenziffer < 1)
    error('The maximum number on the dices must be greater than zero!');
end

throws = (max_augenziffer - 1) * rand(wuerfel, wuerfe);
throws = ceil(throws);
augensumme = sum(throws, 2);

if iscolumn(augensumme)
    augensumme = transpose(augensumme);
    
end

