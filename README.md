# EBird

This is a simple wrapper for the [eBird API version 1.1](https://confluence.cornell.edu/display/CLOISAPI/eBird+API+1.1)

The library also wraps the portion of the [avian knowledge API](https://confluence.cornell.edu/display/CLOISAPI/AKNAPIs) that is needed for the eBird API.

## Installation

Add this line to your application's Gemfile:

    gem 'ebird'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ebird

## Usage

```ruby
require 'ebird'

ak = EBird::AvianKnowledge.new

puts ak.country_list

ebird = EBird::EBird.new

puts ebird.species_reference
```
