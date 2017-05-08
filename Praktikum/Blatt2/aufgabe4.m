y1=wuerfelbecher(9,777,5);
y2=wuerfelbecher(9,77777,5);
y3=wuerfelbecher(9,7777777,5);

[wert1, anzahl1] = haeufigkeit(y1);
[wert2, anzahl2] = haeufigkeit(y2);
[wert3, anzahl3] = haeufigkeit(y3);

figure('Name','Blatt2, Aufgabe4: Histrogramm','NumberTitle','off');
barWidth = 0.2;
%wuerfelbecher(9,777,5)
subplot(1,3,1);
bar(wert1, anzahl1,'BarWidth', barWidth);
title('Histogram für wuerfelbecher(9,777,5)');
xlabel('Vorkommende Werte');
ylabel('Häufigkeit des Vorkommens');
grid on;
%wuerfelbecher(9,77777,5)
subplot(1,3,2)
bar(wert2, anzahl2,'BarWidth', barWidth);
title('Histogram für wuerfelbecher(9,77777,5)');
xlabel('Vorkommende Werte');
ylabel('Häufigkeit des Vorkommens');
grid on;
%wuerfelbecher(9,77777,5)
subplot(1,3,3)
bar(wert3, anzahl3,'BarWidth', barWidth);
title('Histogram für wuerfelbecher(9,77777,5)');
xlabel('Vorkommende Werte');
ylabel('Häufigkeit des Vorkommens');
grid on;
