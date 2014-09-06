from tornado import gen
def f():
    s = 0
    for i in xrange(100000):
        s += i
    return s

@gen.coroutine
def g():
    r =  f()
    raise gen.Return(r)

