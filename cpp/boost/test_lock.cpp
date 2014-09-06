#include<boost/thread/thread.hpp>
int main(){
    boost::mutex the_mutex;
    for(int i =0 ; i<1000000; i++)
    {
        boost::mutex::scoped_lock lock(the_mutex);
    }
}
