cmake_minimum_required(VERSION 2.6)
project(boost-test)
add_executable(test_lock test_lock.cpp)
target_link_libraries(test_lock boost_thread-mt boost_system)
