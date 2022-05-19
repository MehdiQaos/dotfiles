import socket

ss = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
ss.connect(('localhost', 8888))

msg = 'hello my friend how are you my name is mehdi qaos and i am from khouribga and \
    i love ock'

try:
    print(f'sending message to {ss.getpeername()}')
    ss.sendall(msg.encode())
    msg_lenght = len(msg)
    received = 0
    while received < msg_lenght:
        data = ss.recv(10)
        print(f'received {data}')
        received += len(data)
finally:
    print('closing socket')
    ss.close()