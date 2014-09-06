#include<vector>
#include<string>
#include<iostream>
#include<cstdio>
using namespace std;
int main()
{
    vector<string> v;
    cout<<"size:"<<v.size()<<endl;
    v.resize(6);
    char buf[10]={0};
    for(int i=0;i<6;i++)
    {
        sprintf(buf, "%i", i);
        v[i] = buf;
    }
    cout<<"after resize(6), size:"<<v.size()<<endl;
    v.reserve(12);
    cout<<"after reserve(12), size:"<<v.size()<<endl;
    cout<<"capacity:"<<v.capacity()<<endl;

    v.push_back("a");
    v.push_back("b");
    v.push_back("c");
    cout<<"after push_back(3), size:"<<v.size()<<",capacity:"<<v.capacity()<<endl;

    v.resize(3);;
    cout<<"after resize(3), size:"<<v.size()<<endl;
    cout<<"capacity:"<<v.capacity()<<endl;
    for(int i = 0;i<v.size();i++)
        cout<<v[i]<<' ';
    cout<<endl;

    v.resize(18);;
    cout<<"after resize(18), size:"<<v.size()<<endl;
    cout<<"capacity:"<<v.capacity()<<endl;
    for(int i = 0;i<v.size();i++)
        cout<<v[i]<<' ';
    cout<<endl;

    v.clear();
    cout<<"after clear(), size:"<<v.size()<<endl;
    cout<<"capacity:"<<v.capacity()<<endl;
    for(int i = 0;i<v.size();i++)
        cout<<v[i]<<' ';
    cout<<endl;

}
