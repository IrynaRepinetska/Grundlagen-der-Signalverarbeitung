%Gruppenname: iryna&philipp
%562366 Iryna Repinetska
%565229 Philipp Waldinger
function [m1,m2,z2,z3,z4] = momente(daten)
%prüfe ob daten keine komplexe Zahlen enthalten
if (isnumeric(daten)==0 || isreal(daten)==0)
    error('an input should not contain complex numbers or strings')
end

% Berechnung m1
m1 = summe(daten);

%Berechnung m2
dummy = daten.*daten;
m2 = summe(dummy);

%Berechnung z2
dummy = daten - m1;
dummy_z2 = power(dummy,2);
z2 = summe(dummy_z2);

%Berechnung z3
dummy_z3 = power(dummy,3);
z3 = summe(dummy_z3);

%Berechnung z4
dummy_z4 = power(dummy,4);
z4 = summe(dummy_z4);
end
