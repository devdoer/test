#include<fstream>
#include<string>
#include<iostream>
using namespace std;
int main(int argc, char * argv[])
{
    ifstream inf(argv[1]);
    string str;
    int i=0;
    while(getline(inf,str))
    {
        cout<<i<<' '<<str<<endl;
        ++i;
        inf.seekg(-str.size()-1, std::ios::cur);
    }
}

