improvedimgs=imgs;
improvedlabs=labs;
tempimpimg=[];
tempimplab=[];
for j=1:59996
    tempimpimg=[];
    tempimplab=[];
    for i=1:8
        improve=imgs(j,:);
        imp=vec2mat(improve,28,0);
        imp(:,[1:i])=[];
        imp=[imp,zeros(28,i)];
        imp=imp';
        imp=imp(:);
        imp=imp';
        tempimpimg=[tempimpimg;imp];
        tempimplab=[tempimplab;labs(j,:)];
    end
    
    for i=1:3
        improve=imgs(j,:);
        imp=vec2mat(improve,28,0);
        imp([1:i],:)=[];
        imp=[imp;zeros(i,28)];
        imp=imp';
        imp=imp(:);
        imp=imp';
        tempimpimg=[tempimpimg;imp];
        tempimplab=[tempimplab;labs(j,:)];
    end
    
    for i=1:2
        improve=imgs(j,:);
        imp=vec2mat(improve,28,0);
        imp([28-i+1:28],:)=[];
        imp=[zeros(i,28);imp];
        imp=imp';
        imp=imp(:);
        imp=imp';
        tempimpimg=[tempimpimg;imp];
        tempimplab=[tempimplab;labs(j,:)];
    end
    
    improvedimgs=[improvedimgs;tempimpimg];
    improvedlabs=[improvedlabs;tempimplab];
end