Riemann Unicorn
=============

Riemann client to report the number of active and queued transactions in Unicorn.

Usage
=============

For Unix sockets
```bash
riemann-unicorn --unicorn-socket /path/to/socket.sock
```

For TCP listeners
```bash
riemann-unicorn --unicorn-tcp 127.0.0.1:8080
```