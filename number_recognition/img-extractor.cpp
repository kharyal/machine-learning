#include <iostream>
#include <fstream>
#include <string>
using namespace std;

int main(){
    int i=3;
    char c;
    string str;
    fstream label_fil ("train-images-idx3-ubyte.txt");
    fstream imgdatafil("imgdata.txt");

    if(! imgdatafil.is_open())
        cout<<"unable to process file \n";

    while(i){
        for(int j=0;j<4;j++){
            label_fil.get(c);    
            str.push_back(c);    
        }
        //printf("%ud\n",str);
        i--;
    }
    
    while(label_fil.get(c))
        imgdatafil<<unsigned(c)<<endl;

    if(! label_fil.is_open())
        cout<<"unable to process file \n";

    label_fil.close();
    imgdatafil.close();
    return 0;
}