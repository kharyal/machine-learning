clear;
sz=100;
x=rand(sz,1).*100;
y=sqrt(sqrt(x)).*100+rand(sz,1).*50;
plot(x,y,'o');
hold on;
temp=[ones(sz,1),x,sqrt(x),x.^2];
x=[ones(sz,1),x./100,sqrt(x)./10,x.^2./10000];
xtemp=temp;
theta=[0;0;0;0];
eps=0.000001;
alpha=0.001;
last=[1;1;1;1];
while any(abs(last-theta)>eps)
    last=theta;
    theta=(theta-x'*(x*theta-y).*alpha/sz);
end
temp2=[1:sz];
temp=[ones(sz,1),temp2'./100,sqrt(temp2')./10,temp2'.^2./10000];
ans=temp*theta;
plot(temp2,ans);