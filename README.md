# ObliqueStrategies

A Ruby gem for delivering a [Oblique Strategies](https://en.wikipedia.org/wiki/Oblique_Strategies) in code and from the command line. With built in strategies, or bring
your own newline-delimited file. See the [.travis.yml](.travis.yml) file and the [build status](https://travis-ci.com/nodanaonlyzuul/oblique_strategies) for tested Ruby versions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'oblique_strategies'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install oblique_strategies

## Usage

### In The Command Line

    $ oblique_strategies
    Change nothing and continue with immaculate consistency

### Fast & Dirty With Built-in Cards

```ruby
require 'oblique_strategies'

puts ObliqueStrategies.card
# "Is it finished?"
```

### Multiple Cards

The class method `card()` is a shortcut for instantiating an instance, and calling
the `card()` instance method. If you need multiple cards, you can avoid
re-reading the file by creating an instance of `ObliqueStrategies`.

```ruby
require 'oblique_strategies'

deck =  ObliqueStrategies.new()

deck.card
# "Cascades"

deck.card
# "Cut a vital connection"
```

### Bring Your Own

```ruby
require 'oblique_strategies'

deck =  ObliqueStrategies.new(path: '/path/to/your/file.txt')

deck.card
# "This does not bode well"

deck.card
# "Maybe later"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

Run `bundle exec ./exe/oblique_strategies` to test the CLI.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at <https://github.com/nodanaonlyzuul/oblique_strategies>. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ObliqueStrategies project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/oblique_strategies/blob/master/CODE_OF_CONDUCT.md).

## Credit

I've used the strategies from [ptigas/oblique-strategies](https://github.com/ptigas/oblique-strategies/).
