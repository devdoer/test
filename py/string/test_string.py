#!/Users/jerry/pkgs/vpy/bin/python
import random
if __name__ == '__main__':
    l = random.sample(xrange(1,1000),500)
    i = '&'.join(map(str,l))
    test = 's=string.f(i,"101")'
    import timeit
    print timeit.repeat(test, 'from __main__ import i;import string', repeat=3, number=1000)
    print timeit.repeat(test, 'from __main__ import i;import stringx as string', repeat=3, number=1000)
