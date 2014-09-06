#include<fstream>
#include<string>
#include<iostream>
#include<vector>
#include<boost/algorithm/string.hpp>
#include<boost/foreach.hpp>
#include<boost/algorithm/string/classification.hpp>
#include <boost/progress.hpp>
void f(std::string &s, std::string &cur_sku)
{
        std::vector<std::string> vec;
        boost::split(vec,s, boost::is_any_of("&"));
        std::vector<std::string> result_vec;
        BOOST_FOREACH( std::string &sku, vec){
            if(sku == cur_sku)
            {
                result_vec.push_back("1");
            }
            else{
                result_vec.push_back("0");
            }
        }

        std::string r = boost::join(result_vec,"-");
        //std::cout<<r[0]<<std::endl;

}
int main()
{
    std::ifstream file("skus.txt");
    std::string s;
    getline(file, s);
    file.close();
    //std::cout<<s<<std::endl;

    std::string cur_sku = "101";
    boost::progress_timer t;
    for(int i = 0;i<1000;i++)
    {
        f(s, cur_sku);
    }
}
