# README

## Versions
* Rails version
5.0.1

* Ruby version
2.3.1

## SSL Settings
```
openssl genrsa 2048 > config/server.key
openssl req -new -key config/server.key > config/server.csr
openssl x509 -days 3650 -req -signkey config/server.key < config/server.csr > config/server.crt
```

## Register an application on Google APIs
https://console.developers.google.com

## Add client_id and client_secret
config/secrets.yml
```
  google_oauth_client_id: xxxxxxxxx.apps.googleusercontent.com
  google_oauth_client_secret: yyyyyyyy
```

## Starting command
```
bundle install --path=vendor/bundle
bin/rake db:migrate
bin/rails s
```
