#https://youtu.be/qoS4bLmstlk

#Create a 2048 bit Certificate Authority (CA) private key
##Output privkey.pem
sudo openssl genrsa -out privkey.pem 2048

#Create self signed CA certificate - Root certificate
##Output CA.pem
###Country Name = NL
###State or Province Name = Noord-Holland
###City = Zaandam
###Organization Name= Mobilefish.com CA
###CN
###Email
sudo openssl req -new -x509 -days 3650 -nodes -key privkey.pem -sha256 -out ca.pem


#Configure  server Configuration File
#--> server.csr.cnf

#Create CSR and certification Signing REquest (CSR) and server private key. 
##enter password
##Output CSR =  server.csr
##Out Server Private Key = server.key
openssl req -new -nodes -out server.csr -keyout server.key -config server.csr.cnf

#Configure extension file
#-->server_v3.ext
#server.csr.cnf CN should be mention in Subject Alternative Name

#Create Server Certificate
##Output server certifcate = server.crt
##Output serial number file = ca.srl
sudo openssl x509 -req -in server.csr -CA ca.pem -CAkey privkey.pem -CAcreateserial -out server.crt 3650 -extfile server_v3.ext


--------------
Mobile fish.com CA 
--------------
  +
  |
  |
  +
--------------
Certificate with SAN (sand.mobilefish.com and proxy.obilefish.com)
--------------

