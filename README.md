# README

Creates a simple prototype that will evaluate an existing emergency summary template, interpolating different place holders with persisted data to render the final result.

###Ruby / Rails versions
```
ruby-2.4.0 [ x86_64 ]

Rails 5.2.0
```
###Configuration
After cloning this repo you should be able to run:
```
$ bundle install
$ bin/rake db:migrate
```
###Sample Data
To populate the local sqlite3 database with some sample data, run the following:
```
$ lib/populate_db.rb
```

###How to run the test suite

```
$ bin/rake
```
