function y = swal(k)
    kbin = dec2bin(k);
    y = [1];
    for p = 1:length(kbin)
        if (kbin(p) == '1')
            tail = -fliplr(y);
            y = [y,tail];
        else
            tail = fliplr(y);
            y = [y, tail];
        end
    end
end
