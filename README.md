# README

# Thoughts
- okay I got really nervous thoughout this process and kinda borked this challenge. With that being said this is how I would redo this challenge if given more time to do so. That being said I learned a lot about how to improve the code going forward.(step 1: don't panic)

## Structure
- I think this challenge would have been better executed by using an api. The reason I say that is so that it makes it easier to return a json object. 

Models:
- Models I would keep relatively the same but for the decodes.bitlink attribute I would have split it up so that the last 7 values (hash) would be a separate value.

- I also think that creating a join table between encodes and decodes would have been a more functional idea. The reason being that the hash value would have been an identifying value that I could use to levearged on the encodes table to be able to connect the two.

Database:
- At first I started off with SQLite3 which I ended getting really stuck on because I thought I was more familiar with how it worked. I came to realize that after all the experience I have had with a postgres database and utilizing that syntax would be better for my skill set. 

Serializers:
- After creating a model method that searched by year for all the decodes bitlinks I would put that information into a serializer and used the 'jsonapi-serializer' gem to create a uniform data set.

Testing:
- Outside of using my rspec testing library I would have connected the code to postman to be able to see the output in a way that is more readable for potential users.


## Run and Install The Project
ruby version: ruby 2.7.2 gems: simplecov, pry

Fork this repository Clone your fork 
Run `bundle install`
Run `rails db:create`
Run `rails db:migrate`
Run `rails load:urls` **creates csv database**
Run `rails load:bitlink_clicks` **creates json database**

To run the test suite:

Entire suite: bundle exec rspec spec
One file: `bundle exec rspec spec/<folder_name>/<file_name>.rb
One test: `bundle exec rspec spec/<folder_name>/<file_name>.rb:<line_number>
To check the testing percentage run rspec spec, then open coverage/index.html. An internet window should open with the testing coverage percentages for the entire application.