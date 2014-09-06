#include<map>
#include<iostream>
using namespace std;
int main()
{
    map<int,string> m;
    m[3] = "hello";

    auto  iter = m.begin();
    cout<<iter->first<<' '<<iter->second<<endl;
    return 0;
}
