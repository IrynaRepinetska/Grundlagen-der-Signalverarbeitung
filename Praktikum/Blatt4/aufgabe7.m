y = swalsys(16);
O = zeros(16);
flag = 0;
for k=1:16
    for m=1:16
        O(k,m) = sum(y(k,:).*y(m,:));
        if(k ~= m)
            if ( imag(O(k,m)) ~= 0 && flag == 0)
                flag = 1;
            end
        end
    end
end

if (flag == 1)
    disp('Die Funktionen sind nicht orthogonal')
else
    disp('Die Funktionen sind orthogonal')
end
disp('Die errechnete Matrix ist:')
disp(O)
