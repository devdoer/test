#include<iostream>
using namespace std;
int main()
{
    uint64_t i = 2147483649;
    uint32_t j = i;
    cout << j << endl;
    //2147483649

    int32_t k = i;
    cout << k << endl;
    //-2147483647

    uint64_t l = k;
    cout << l << endl;
    //18446744071562067969

    uint64_t n = (-1);
    cout << n << endl;
    //18446744073709551615 == 2**64-1

    n = -2;
    cout << n << endl;
    //18446744073709551614
}
