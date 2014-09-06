#include<iostream>
using namespace std;
int sqr(int k){
    return k*k;
}

int g(int i = sqr(3)){
    return i;
}
int main(){

    cout<<g()<<endl;;
}
