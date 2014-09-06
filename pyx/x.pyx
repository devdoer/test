# distutils: language = c++
from libcpp.vector cimport vector
cdef vector[int] vec
for i in range(10):
    vec.push_back(i)
for i in vec:
    print i
