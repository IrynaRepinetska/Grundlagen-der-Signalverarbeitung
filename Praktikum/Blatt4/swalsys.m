function y = swalsys(k)
    n = log2(k);
    if( n ~= round(n) || n<0 )
        error('der Eingabeparameter soll gleich 2^n für ein n in N sein')
    end
    y = zeros(k);
    for t = 1:k
         e = swal(t-1);
         l = length(e);
         a = k/l;
         y_e = zeros(1,k);
         index = 0;
         for s = 1:l
            for p = 1:a 
                index=index+1;
                y_e(index) = e(s);
            end
         end
         y(t,:) = y_e;
    end
end
