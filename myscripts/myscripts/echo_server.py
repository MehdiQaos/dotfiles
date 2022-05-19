import socket

ss = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

ss.bind(('', 8888))
print(f'binded to {8888}')
ss.listen(1)

while True:
    print('waiting for connection...')
    conn, addr = ss.accept()
    print(f'connected to {addr}')
    try:
        while True:
            data = conn.recv(10)
            print(f'received {data}')
            if data:
                print(f'sending data back to the client: {addr}')
                conn.sendall(data)
            else:
                print(f'no more data from {addr}')
                break
    finally:
        conn.close()
        print(f'connection to {addr} closed')