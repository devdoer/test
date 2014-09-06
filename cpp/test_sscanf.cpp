#include<cstdio>
#include<iostream>
using namespace std;
int main()
{
    const char * pline=" \n\r\t3:1.2    ";
    //const char * pline=" \n\r\t    ";
    int feature;
    float value;
    int nchar;
    cout<<sscanf(pline, "%d:%f%n", &feature, &value, &nchar)<<endl;
    cout<<feature<<endl;
    cout<<value<<endl;
    cout<<nchar<<endl;
}
