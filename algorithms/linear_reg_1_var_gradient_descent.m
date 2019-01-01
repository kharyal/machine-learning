clear;
sz=100;
X=100*rand(sz,1);
%X.*100+
Y=X.*100+(rand(sz,1)-ones(sz,1)).*5000;
eps=0.000001;
ab=[0;0];
condition=[eps;eps];
last=[1;1];
alpha=0.00001;
while any(abs(last-ab)>condition)
    last=ab;
    temp1=ab(1)-alpha*sum(ones(sz,1).*ab(1)+X.*ab(2)-Y)/sz;
    temp2=ab(2)-alpha*sum(diag(X)*(ones(sz,1).*ab(1)+X.*ab(2)-Y))/sz;
    ab=[temp1;temp2];
end
hold on;
plot(X,Y,'o');
temp=zeros(sz,1);
for i=1:sz
    temp(i)=i;
end
ans=ones(sz,1).*ab(1)+temp.*ab(2);
plot(temp,ans,'-');
hold off