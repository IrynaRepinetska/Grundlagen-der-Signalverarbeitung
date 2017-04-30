a=zeros(20,30);
for n = 1:20
    for k= 1:30
        a(n,k)=binomial(n-1,k-1);
    end
end
%disp(a)

surf(a)
xlabel('k')
ylabel('n')
zlabel('Binomialkoeffizient(n-1,k-1)')