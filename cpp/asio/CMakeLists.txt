PROJECT(asio)
cmake_minimum_required(VERSION 2.6)
#LINK_DIRECTORIES(/usr/local/lib)
ADD_EXECUTABLE( timer timer.cpp)
TARGET_LINK_LIBRARIES(timer /usr/local/lib/libboost_system.a)
