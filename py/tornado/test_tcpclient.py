from tornado.ioloop import IOLoop
from tornado.tcpclient import TCPClient
if __name__ == '__main__':
    ioloop = IOLoop.instance()
    ioloop.start()
