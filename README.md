# README

## Init
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.3.1

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## SSL
```
openssl genrsa 2048 > config/server.key
openssl req -new -key config/server.key > config/server.csr
openssl x509 -days 3650 -req -signkey config/server.key < config/server.csr > config/server.crt
```
