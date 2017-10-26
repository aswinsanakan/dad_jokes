# dad_jokes
[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT) 
[![Gem Version](https://badge.fury.io/rb/dad_jokes.svg)](https://badge.fury.io/rb/dad_jokes)
[![Gem](https://img.shields.io/gem/dt/dad_jokes.svg?style=flat-square)](https://rubygems.org/gems/dad_jokes)
<br/>

Welcome to <b>Dad Jokes</b>! <br/>
Generate random dad jokes using this gem.

## Installation

Add this line to your application's Gemfile:

``` ruby
gem 'dad_jokes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dad_jokes

## Usage

#### #1 Generate a random Dad joke

``` ruby
DadJokes.random
```

Sample Output #1 : ``"Dad, I'm hungry." "Hello, Hungry. I'm Dad."``

Sample Output #2 : ``Why didn’t the skeleton cross the road? Because he had no guts.``

#### #2 Search for Dad jokes

``` ruby
DadJokes.search(term:, limit:)
```

* _term:_ 
   - (**required*) 
   - Search term goes here
* _limit:_  
   - (**optional*)
   - Set limit for the number of jokes (because, obviously you're tired of laughing!). 
   - Default : <b>5 jokes</b>

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/aswinsanakan/dad_jokes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

