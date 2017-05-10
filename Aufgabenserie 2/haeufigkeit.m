function [wert, anzahl] = haeufigkeit(daten)

daten = reshape(daten, [1, numel(daten)]);
values = unique(daten);
occurences = histc(daten, values);

wert = values;
anzahl = occurences;

end
