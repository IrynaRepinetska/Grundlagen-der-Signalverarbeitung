m = harm([0:3],[0:0.01:0.99]);
im = imag(m);
re = real(m);
figure('Name','Blatt4, Aufgabe2','NumberTitle','off');
for k = 1:4
    for t =1:length(m)
        x = [0 re(k,t)];
        y = [0 im(k,t)];
        subplot(2,4,k)
        plot(x,y)
        set(gca, 'XTickMode', 'manual', 'XTick', [-1 0 1])
        set(gca, 'YTickMode', 'manual', 'YTick', [-1 0 1])
        xlim([-1.2 1.2])
        ylim([-1.2 1.2])
        title(sprintf('k=%d',k-1))
        axis square
        x1 = [0 re(k,t)];
        y1 = [0 0];
        x2 = [0 0];
        y2 = [0 im(k,t)];
        subplot(2,4,k+4)
        plot(x1,y1,'r');
        hold on
        plot(x2,y2,'b');
        hold off
        set(gca, 'XTickMode', 'manual', 'XTick', [-1 0 1])
        set(gca, 'YTickMode', 'manual', 'YTick', [-1 0 1])
        xlim([-1.2 1.2])
        ylim([-1.2 1.2])
        title(sprintf('k=%d',k-1))
        axis square
        pause(0.01)
    end
end
