imgdataFile=fopen('imgdata.txt','r');
formatspec="%c";
imgdata=fscanf(imgdataFile,formatspec);
labelFile=fopen('labeldata.txt','r');
labeldata=fscanf(labelFile,formatspec);
clear formatspec imgdataFile labelFile;
imgdata=str2num(imgdata);
imgs=vec2mat(imgdata,784,0);

lab=str2num(labeldata);

imgs(60001,:)=[];
imgs([1:4],:)=[];

diag=eye(10);
labs=[];
for i=1:59996
    if lab(i)==0
        labs=[labs;[1,0,0,0,0,0,0,0,0,0]];
    end
    
    if lab(i)==1
        labs=[labs;[0,1,0,0,0,0,0,0,0,0]];
    end
    
    if lab(i)==2
        labs=[labs;[0,0,1,0,0,0,0,0,0,0]];
    end
    
    if lab(i)==3
        labs=[labs;[0,0,0,1,0,0,0,0,0,0]];
    end
    
    if lab(i)==4
        labs=[labs;[0,0,0,0,1,0,0,0,0,0]];
    end
    
    if lab(i)==5
        labs=[labs;[0,0,0,0,0,1,0,0,0,0]];
    end
    
    if lab(i)==6
        labs=[labs;[0,0,0,0,0,0,1,0,0,0]];
    end
    
    if lab(i)==7
        labs=[labs;[0,0,0,0,0,0,0,1,0,0]];
    end
    
    if lab(i)==8
        labs=[labs;[0,0,0,0,0,0,0,0,1,0]];
    end
    
    if lab(i)==9
        labs=[labs;[0,0,0,0,0,0,0,0,0,1]];
    end
end
load('ANNimages&labels.mat', 'layers_1');

%options=trainingOptions('sgdm','MiniBatchSize',100,'MaxEpochs',6,'shuffle','every-epoch',