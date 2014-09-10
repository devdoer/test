from tornado.concurrent import return_future
import time
def cb(result):
    print 'result is:', result

@return_future
def f(arg1, arg2, **kwargs):
    #yield time.sleep(100)
    r = arg1 + arg2
    j = 2*r
    cb = kwargs['callback']
    cb(j)


x = f(3,2)
print x
print x.result()
