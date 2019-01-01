sz=100;
x=(1:sz)';
y=zeros(sz,1);
c=zeros(sz,1);
for i=1:sz/2
    y(i)=10*rand+20;
end
y=y+20*rand(sz,1);
plot(x,y,'o');
set=[x,y];
m=[set(randi(sz,1),:)',set(randi(sz,1),:)'];
last=[0;0];
while any(last~=m)
    last=m;m1=set(i,:)';
    m1=[0;0];
    no1=0;
    m2=[0;0];
    no2=0;
    for i=1:sz
        a=sum((set(i,:)'-m(:,1)).^2);
        b=sum((set(i,:)'-m(:,2)).^2);
        if(a<b) 
            c(i)=1;
            m1=m1+set(i,:)';
            no1=no1+1;
        else
            c(i)=0;
            m2=m2+set(i,:)';
            no2=no2+1;
        end
    end
    for i=1:2
        m=[m1./no1,m2./no2];
    end
end
c2=zeros(sz,1);
c1=zeros(sz,1);
for i=1:sz
    if(c(i)==1)
        c2(i)=y(i);
    else
        c1(i)=y(i);
    end
end
plot(x,c2,'o');
hold on;
plot(x,c1,'o');
hold off;