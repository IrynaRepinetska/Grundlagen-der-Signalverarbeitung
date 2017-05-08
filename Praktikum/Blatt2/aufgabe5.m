%open file
fileID = fopen('shake.txt');
if(fileID == -1)
    error('file can not be opened')
end
%A is a colomn vector of a binary data that is 7 bits long
A = fread(fileID,'ubit7');
fclose(fileID);
%binary to char
A_ascii = char(A);
disp('Die ASCII-kodierten Zeichen der Datei');
disp(A_ascii);
%die Haeufigkeit für verschiedene Zeichen zu bestimmen
[wert,anzahl] = haeufigkeit(A_ascii);
%relative Haeufigkeit zu berechnen
gesamt = sum(anzahl);
rel_h = anzahl./gesamt;
%log2 von 1/p zu bestimmen
log_rel_h = log2(1./rel_h);
%einzelne Entropie
entropie = rel_h.*log_rel_h;
%Entropie
H = sum(entropie);
%Max. Entropie
H_max = log2(256);
%Redundanz
R = H_max - H;
sprintf('Die Entropie ist %f,\ndie maximale Entropie ist %f,\ndie Redundanz ist %f.\n', H, H_max, R)
