![Drunk Solo](/doc/solo-beer.jpg?raw=true "Drunk Solo")

# Team Solo application - NCC Kraków 2018

Hello from Team Solo, the best team of them all.
We are: Piotrek, Konrad, Kamil, Marta and our mentor/product owner Norbert.

We have created a magical app that will tell you which alcohol you should drink according to the weather in the city which you are currently at.
We automagically convert your location to degrees and degrees to alcohol of your preference. Don't have a preference? We will suggest you a beer then!

## Features

* Find city by name
* Convert city to local temperature
* Match temperature to alcohol
* Add via admin panel: alcohol categories & types
* Send an sms to friends


### Technology stack
 * Rails 5.2


## Prerequisites

You will need the following things properly installed on your computer:
 * ruby
 * bundler
 * node

## Dependencies
  * Twilio API
  * DarkSky API
  * Geocoder

## Installation

```sh
$ bundle install
```

## Running / Development


```sh
$ rails s
```

## Testing

```sh
$ bundle exec rspec
```
