NiceId ![Travis-ci](https://secure.travis-ci.org/shtirlic/niceid.png) [![Gem Version](https://badge.fury.io/rb/sinatra-jsonp.svg)](https://badge.fury.io/rb/sinatra-jsonp)
==============

Simple to remember and safe for handwriting, letters and numbers based ID.

Installation
------------

System install

```bash
gem install niceid
```

Gemfile

```ruby
gem 'niceid'
```

Usage
-----

Command line 

```bash
$ niceid
5k3p6k
```

Code 

```ruby
NiceId::Id.new  # => 8k4s7v
NiceId::Id.new(6)  # => 2j4p6v7j4t3v
```
