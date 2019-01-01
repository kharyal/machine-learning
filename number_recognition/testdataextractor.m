imgdataFile=fopen('testimgdata.txt','r');
formatspec="%c";
testimgdata=fscanf(imgdataFile,formatspec);
labelFile=fopen('testlabeldata.txt','r');
labeldata=fscanf(labelFile,formatspec);
clear formatspec imgdataFile labelFile;
testimgdata=str2num(testimgdata);
testimgs=vec2mat(testimgdata,784,0);

testlab=str2num(labeldata);

testimgs(10001,:)=[];
testimgs([1:4],:)=[];