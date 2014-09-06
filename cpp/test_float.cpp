#include<iostream>
#include<cmath>
#include<float.h>
using namespace std;
int main()
{
    float f1 = FLT_MAX;
    float f2 = FLT_MAX;
    cout << f1<<endl;
    cout << f2<<endl;
    cout<<std::numeric_limits<float>::min()<<endl;
    cout<<"min:"<<std::numeric_limits<double>::min()<<endl;
    cout<<"has inf:"<<std::numeric_limits<int>::has_infinity<<endl;
    cout<<"inf:"<<std::numeric_limits<double>::infinity()<<endl;
    double i = std::numeric_limits<double>::infinity();
    if(i > 0 )
        cout<<"haha"<<endl;
    cout<<"float size:"<<sizeof(float)<<endl;
    cout<<"double size:"<<sizeof(double)<<endl;
    double x = ::log(1.000000000001);
    cout<<x<<endl;
    x = ::log(1.00000000000000000001);
    cout<<x<<endl;
    x = ::log(1.00000000000000000001);
    double y = 1.0/0.0;
    cout<<y<<endl;
    cout<<isinf(y)<<endl;
    cout<<::exp(1158)<<endl;
}
