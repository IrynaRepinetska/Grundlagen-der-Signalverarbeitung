y = swalsys(16);
disp('Das Ergebnis von swalsys(16) ist die Matrix:')

disp(y)
m = zeros(16);
for t = 1:16
    for p = 1:16
        m(t,p) = m(t,p)+3*t-1;
    end
end
y = y + m;
y = y.';
y = fliplr(y);
figure('Name','Blatt4, Aufgabe6: swalsys(16)','NumberTitle','off');
stairs(y);
set(gca,'xtick',[]);
set(gca,'ytick',[]);
xlim([1 16]);
axis ij;
