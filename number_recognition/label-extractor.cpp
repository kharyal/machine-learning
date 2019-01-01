#include <iostream>
#include <fstream>
#include <string>
using namespace std;
int main(){
    char c;
    string str;
    int i=3;
    fstream label_fil ("train-labels-idx1-ubyte.txt");
    fstream labeldatafil("labeldata.txt");
    while(i){
        for(int j=0;j<4;j++){
            label_fil.get(c);    
            str.push_back(c);    
        }
        //printf("%ud\n",str);
        i--;
    }

    while(label_fil.get(c))
        labeldatafil<<unsigned(c)<<endl;

    if(! label_fil.is_open())
        cout<<"unable to process file \n";
    label_fil.close();
    labeldatafil.close();
    return 0;
}