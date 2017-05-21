# Trad'Food
[![Code Climate](https://codeclimate.com/github/bastienrobert/TradFood/badges/gpa.svg)](https://codeclimate.com/github/bastienrobert/TradFood)

## What's Trad'Food
Trad'Food is a student project, made @ IUT Bordeaux Montaigne, and developed with <3.

## How to deploy (dev)

You'll need an AWS account.
```
git clone https://github.com/bastienrobert/TradFood.git
cd TradFodd
cp config/local_env.yml.example config/local_env.yml
nano config/local_env.yml
```
Then enter your AWS credentials
```
rake db:create
rake db:migrate
rails s
```
open http://localhost:3000/
