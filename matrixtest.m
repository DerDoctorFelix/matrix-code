A=[1,0;0,1i];
B=1/sqrt(2)*[1,1;1,-1];

C=[0,0;0,0];

C(1:2,1:2)=A(1:2,1:2);
C(3:4,1:2)=B(1:2,1:2);


for m=1:2
    
    d=size(C,1)

C_A=C*A;
C_B=C*B;

    s_a=size(C_A);
    s_a=s_a(1,1);
    s_b=size(C_B);
    s_b=s_b(1,1);

C((d+1):(d+s_a),1:2)=C_A(1:s_a,1:2);
C((d+s_a+1):(d+s_a+s_b),1:2)=C_B(1:s_b,1:2);

n=size(C,1);

k = 1;
while (k < size(C,1))
    for l = (size(C,1)-1):-2:(k+2)
        if isequal(C(k:k+1,1:2), C(l:l+1,1:2))
            C([l,l+1],:) = [];
        end
    end
    k = k + 2;
end

new_n=size(C,1)

if d==new_n
    error('Done')
else
end 
end
