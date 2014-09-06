# distutils: language = c++
from libc.stdlib cimport atoi
cdef parse_chr_to_pyint(const char *s):
    assert s is not NULL, "byte string value is NULL"
    s = NULL
    return atoi(s)

def io():
    print parse_chr_to_pyint("a")

