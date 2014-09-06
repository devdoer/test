from tornado.ioloop import IOLoop
def on_timeout1(i,j,k):
    print 'timeout,', '%s+%s=%s'%(i,j,i+j)

def on_timeout2(i,j):
    print 'timeout,', '%s+%s=%s'%(i,j,i+j)


if __name__ == '__main__':
    ioloop = IOLoop.instance()
    ioloop.add_timeout(ioloop.time()+3, on_timeout1, 3,4)
    ioloop.add_timeout(ioloop.time()+3, on_timeout2, 3,4,5)
    ioloop.add_timeout(ioloop.time()+3, on_timeout2, 3,4)
    ioloop.start()
