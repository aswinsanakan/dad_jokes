# dad_jokes
[![License](https://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT) 
[![Gem Version](https://badge.fury.io/rb/dad_jokes.svg)](https://badge.fury.io/rb/dad_jokes)
[![Gem](https://img.shields.io/gem/dt/dad_jokes.svg?style=flat-square)](https://rubygems.org/gems/dad_jokes)
<br/>

Welcome to <b>Dad Jokes</b>! <br/>
_( Wait, [what's a Dad joke?](https://en.wikipedia.org/wiki/Dad_joke) )_ <br/>

Generate random dad jokes using this gem.

## Installation

<b>1.</b> Add this line to your application's Gemfile:

``` ruby
gem 'dad_jokes'
```

and then execute:

    $ bundle

<b>OR,</b>

<b>2.</b> Install it yourself as:

    $ gem install dad_jokes

and require in your script as : 
```ruby
require 'dad_jokes'
```

## Usage

#### 1. Get a random Dad joke

``` ruby
# Get a random joke
DadJokes.random
```

_Sample Output #1 :_ ``'"Dad, I'm hungry." "Hello, Hungry. I'm Dad."'``

_Sample Output #2 :_ ``'My dog used to chase people on a bike a lot. It got so bad I had to take his bike away.'``

#### 2. Search for Dad jokes

``` ruby
# Get array of jokes by passing a search term ; and setting limit(optional)
DadJokes.search(term: "cannibal", limit: 1)
```

_Output :_ ``["A cannibal is someone who is fed up with people."]``

* _term :_ 
   - (**required*) 
   - Search term goes here
* _limit :_  
   - (**optional*)
   - Set limit for the number of jokes (because, obviously you're tired of laughing!). 
   - By default : <b>5 jokes</b>

#### 3. Generate & save a random joke as image (in .png format)

```ruby
# Saves a random joke in png format
DadJokes.random_image
```

_Sample Vector image :_ <br>
![Random Joke](./img/joke_vX8MeFdUDlb.png)

_Output to console :_ <br>
``"Dad died because he couldn't remember his blood type. I will never forget his last words. Be positive. ( Saved as image in location: joke_vX8MeFdUDlb.png !)"``


<b>NOTE:</b> If you're inside a Rails project, image will be saved to root of the directory. Otherwise, if you're running the method in a ruby script, the image will be saved in the relative directory.
 
## Contributing

[Bug reports](https://github.com/aswinsanakan/dad_jokes/issues) and pull requests are welcome on GitHub at https://github.com/aswinsanakan/dad_jokes. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

Thanks to [icanhazdadjoke](https://icanhazdadjoke.com/) for the free API.
You can submit new jokes [here](https://icanhazdadjoke.com/submit).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).





