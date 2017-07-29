# onkcop
[![Gem Version](https://badge.fury.io/rb/onkcop.svg)](https://badge.fury.io/rb/onkcop)

FabliCop is a RuboCop configration gem.

## Usage

Setup .rubocop.yml

```sh
bundle exec onkcop init
```

`init` generate the following directive to your `.rubocop.yml`:

```yaml
inherit_gem:
  onkcop:
    - "config/rubocop.yml"
    # uncomment if use rails cops
    # - "config/rails.yml"
    # uncomment if use rspec cops
    # - "config/rspec.yml"

AllCops:
  TargetRubyVersion: 2.4
  # uncomment if use rails cops
  # TargetRailsVersion: 5.1
```

```sh
bundle exec rubocop <options...>
```

## Installation

Add this line to your application's Gemfile:

```ruby
group :development do
  gem "onkcop", require: false
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/onk/onkcop.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
