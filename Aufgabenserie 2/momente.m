function [ m1, m2, z2, z3, z4 ] = momente( daten )

if ~isnumeric(daten) || ~isreal(daten)
    error('The matrix handed over does not only contain real values!');
end

numberofElements = numel(daten);
elements = reshape(daten, [1, numberofElements]);

m1 = mean(elements);

squares = power(elements, 2);
m2 = sum(squares) / numberofElements;

z2 = moment(elements, 2);
z3 = moment(elements, 3);
z4 = moment(elements, 4);

end