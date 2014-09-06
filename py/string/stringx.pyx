from cython.parallel import prange
def f(s, cur_sku) :
    #cdef int i = 0
    #for i in prange(1000,nogil=False):
        skus = s.split('&')
        r = []
        for sku in skus:
            if sku == cur_sku:
                r.append('1')
            else:
                r.append('0')
        p =  '-'.join(r)
        return p
            
