#include<iostream>
using namespace std;
int main(int argc, char * argv[])
{
    size_t i = (1L<<atoi(argv[1]));
    i -= 1;
    cout<<i<<endl;
}
