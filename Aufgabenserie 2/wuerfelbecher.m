% Iryna Repinetska 562366
% Philipp Waldinger 565229

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

throws = ceil(max_augenziffer * rand(wuerfel, wuerfe));
augensumme = sum(throws, 1);

if iscolumn(augensumme)
    augensumme = transpose(augensumme);
    
end

