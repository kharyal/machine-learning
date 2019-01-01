clear;
sz=100;
x=rand(sz,1).*100;
y=sqrt(sqrt(x)).*100+rand(sz,1).*50;
plot(x,y,'o');
x=[ones(sz,1) x];
hold on
theta=[0;0];
theta=pinv(x'*x)*x'*y;
temp2=[1:sz];
temp=[ones(sz,1),temp2'];
ans=temp*theta;
plot(temp2,ans);