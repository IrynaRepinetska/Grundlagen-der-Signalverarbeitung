%Gruppenname: iryna&philipp
%562366 Iryna Repinetska
%565229 Philipp Waldinger
[y,Fs] = audioread('gdur.wav') ;
% sampled data, y, and a sample rate for that data, Fs
% sound(y,Fs);
%Aufruf von der Funktion momente, um m1 und z2 zu bestimmen.
[m1,m2,z2,z3,z4] = momente(y);
%Berechnung der Standardabweichung
st_ab=sqrt(z2);
st_ab_plus = m1 + st_ab;
st_ab_minus = m1 - st_ab;
%Besimmung max und min Wert in y
max = max(y);
min = min(y);
sprintf('Der Mittelwert ist %f,\ndie Standardabweichung ist %f,\nder Minimunwert ist %f,\nder Maximumwert ist %f.\n', m1, st_ab, min, max)

%graph erstellen
x=1:length(y);
p1 = plot(x,y,'b');

hold on;
p2 = plot(get(gca,'xlim'), [m1 m1],'r');
p3 = plot(get(gca,'xlim'), [st_ab_plus st_ab_plus],'y');
p4 = plot(get(gca,'xlim'), [st_ab_minus st_ab_minus],'y');
p5 = plot(get(gca,'xlim'), [min min],'--m');
p6 = plot(get(gca,'xlim'), [max max],'--m');
hold off;
xlabel('Zeit'), ylabel('Signalwerte');
legend([p1, p2, p3, p5],'Signal','Mittelwert', 'Standardabweichung','Minimum-Maximum-Intervall');
xlim( [0 length(y)]);
