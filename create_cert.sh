# openssl req -new -x509 -sha256 -keyout server.pem -out server.pem -days 365 -nodes -config req.conf

openssl req -x509 -sha256 -newkey rsa:2048 -keyout server.pem -out server.pem -days 1024 -nodes -subj '/CN=10.140.44.106' 

# openssl req -new -x509 -sha256 -key key.pem -in csr.pem -out server.pem -days 365 -nodes -config req.conf
