x = [0,1,2,3,4];
y = [1,-1,3,1,2];
p1 = polyfit(x,y,1);
p2 = polyfit(x,y,2);
p3 = polyfit(x,y,3);
p4 = polyfit(x,y,4);

x1 = 0:0.01:4;
y1 = polyval(p1,x1);
y2 = polyval(p2,x1);
y3 = polyval(p3,x1);
y4 = polyval(p4,x1);
figure('Name','Blatt3, Aufgabe2','NumberTitle','off')
z1 = scatter(x,y,'filled');
hold on
z2 = plot(x1,y1, 'y');
z3 = plot(x1,y2, 'y');
z4 = plot(x1,y3, 'g');
z5 = plot(x1,y4, 'm');
grid on
legend([z1, z2, z4, z5],'Diskrete Werte','Polynom ersten und zweiten Grades','Polynom dritten Grades','Polynom vierten Grades')
xlabel('x')
ylabel('y')
set(gca, 'XTickMode', 'manual', 'XTick', 0:x(numel(x)))

hold off

fapp1 = polyval(p1,x);
fapp2 = polyval(p2,x);
fapp3 = polyval(p3,x);
fapp4 = polyval(p4,x);
e2_1 = quaderror(y, fapp1);
e2_2 = quaderror(y, fapp2);
e2_3 = quaderror(y, fapp3);
e2_4 = quaderror(y, fapp4);
sprintf('Quadratischer Fehler ist \n\t\t\t\t%f für den Polynom ersten Gerades;\n\t\t\t\t%f für den Polynom zweiten Gerades;\n\t\t\t\t%f für den Polynom dritten Geraden;\n\t\t\t\t%f für den Polynom vierten Geraden.', e2_1, e2_2, e2_3, e2_4)

