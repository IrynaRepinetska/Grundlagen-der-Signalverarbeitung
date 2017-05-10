y1 = wuerfelbecher(9, 777, 5);
y2 = wuerfelbecher(9, 77777, 5);
y3 = wuerfelbecher(9, 7777777, 5);

y2;

[values1, occurences1] = haeufigkeit(y1);
[values2, occurences2] = haeufigkeit(y2);
[values3, occurences3] = haeufigkeit(y3);

subplot(1, 3, 1);
histogram(y1, 300000);

subplot(1, 3, 2);
histogram(y2, 300000);

subplot(1, 3, 3);
histogram(y3, 300000);