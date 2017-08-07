# fablicop

fablicop is a RuboCop configration gem.

## Usage

Setup .rubocop.yml

```sh
bundle exec fablicop init
```

`init` generate the following directive to your `.rubocop.yml`:

```yaml
inherit_gem:
  fablicop:
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
  gem "fablicop", require: false
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Fablic/fablicop.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
