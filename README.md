# _Anagrams And Antigrams_

#### By _**Matt C.**_

#### _Ruby Code Review #1_

## Description
_A simple command line app that takes two strings and tells you whether or not they are an anagram, an antigram, or neither. Works on single words as well as entire sentences._

## Technologies Used

* _Ruby_
* _rspec_
* _pry_
* _[Docker](https://www.docker.com/)(optional)_

## Using this app with Ruby 2.6.5 installed natively (no Docker)

* _Run_ `git clone https://github.com/catperso/anagrams-and-antigrams` _in your terminal to clone this repository to your device, then navigate to the project directory._
* _Run_ `bundle` _to package the Gems and set up Gemfile.lock._
* _Run_ `rspec` _if you want to run the specs for /lib/anagrams.rb._
* _Run_ `ruby anagrams_script.rb` _to run the app!_

## Using this app with Docker

* _First make sure Docker is installed as per the official [instructions](https://docs.docker.com/get-docker/)._
* _Run_ `docker pull ruby:2.6.5` _to pull an image for the same version of Ruby this project was built with._
* _Run_ `git clone https://github.com/catperso/anagrams-and-antigrams` _in your terminal to clone this repository to your device, then navigate to the project directory._
* _Run_ `docker-compose up` _if you want to run the specs for /lib/anagrams.rb._
* _Run_ `docker-compose run --rm app ruby anagrams_script.rb` _to run the app!_

## Known Bugs

_None so far._

## License - [MIT](https://opensource.org/licenses/MIT)

_If you run into any problems/bugs feel free to send me an email [(mc.casperson@gmail.com)](mailto:mc.casperson@gmail.com) with details._

Copyright (c) _2021_ _Matt C._