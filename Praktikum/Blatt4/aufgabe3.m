tn = [0:1/512:1-1/512];
k=[0:9];
m=[0:9];
y1 = harm(k,tn);
y2 = harm(-m,tn);
O = zeros(10,10);

flag = 0;

for p = 1:10
    for t = 1:10
        O(p,t) = sum(y1(p,:).*y2(t,:))
        if(p ~= t)
            if ( (imag(O(p,t)) ~= 0 || real(O(p,t)) ~= 0) && flag == 0)
                flag = 1
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
