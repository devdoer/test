from tornado.ioloop import IOLoop
from tornado.iostream import IOStream
#from tornado.tcpclient import TCPClient
#from tornado.gen import coroutine
import functools
import socket
class PredictorClient(object):
    def __init__(self,host,port,ioloop, proxy):
        self.stream =  IOStream(socket.socket(), ioloop)
        self.stream.connect((host,port), self.on_connect)
        self.proxy = proxy
    def on_connect(self):
        self.proxy.free_clients.append(self)
        logging.info('connect done')

    def on_send(self, req):
        print 'send request ok!', req
        #self.stream.read_bytes(,self.on_result)

    def on_result(self, result):
        pass

    def forward(self, pb):
        self.stream.write(pb, self.on_forward_ok)

    def on_forward_ok(self):
        pass

class PredictorPorxy(TCPServer):
    def pre_connect(self, num_conns):
        pass

    def handle_stream(self, stream, addr):
        #a new stream from incomming connection
        stream.cli = PredictClient(stream.io_loop,self)#we can pre-connect
        if self.free_clients:
            cli = self.free_clients.pop(0)
            stream.cli = cli
            cb = functools.partial(self.on_pb_head, stream)
            stream.read_bytes(6, self.on_pb_head)
        else:
            stream.close()
            cli =  PredictorClient(self.io_loop, self)

    def on_pb_head(self, stream, data):
        size = struct.unpack()
        stream.read_bytes(size, self.on_pb_ok)

    def on_pb_ok(self, stream, pb):
        stream.cli.forward(pb)
        
    
if __name__ == '__main__':
    sockets =  bind_sockets(8892)
    tornado.process.fork_processes(0)
    ioloop = IOLoop.instance()
    server = PredictorProxyServer(io_loop = ioloop)
    server.add_sockets( sockets )
    ioloop.start()`
