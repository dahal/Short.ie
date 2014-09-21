### Short.ie
URL Shortner

##### Check it Out

```
~> git clone https://github.com/dahal/Short.ie.git
~> cd Short.ie
~> bundle install
~> rake db:create && rake db:migrate && rake db:seed
```

##### For Development Environment
*Please make sure to have .env file on root*

```
~> touch .env | echo 'DOMAIN=http://localhost:3000' > .env
```

##### For Production Environment *(eg Heroku)*
```
~> heroku config:set DOMAIN=http://doma.in
# Note: doma.in is your domain, anything you want it to be.

```

