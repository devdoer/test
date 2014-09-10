import socket
s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.bind(('',8890))
s.listen(5)
while 1:
    cli,addr = s.accept()
    data = cli.recv(1024)
    print data

