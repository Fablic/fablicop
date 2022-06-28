<a href="https://rubygems.org/gems/fablicop"><img alt="fablicop" src="https://img.shields.io/gem/v/fablicop"></a>

# fablicop

fablicop is a RuboCop configration gem.
It assumes your project is using Ruby on Rails and RSpec, so some Cops prefixed with `Rails` and `RSpec` are enabled out of the box.
In other words, it's not appropriate to use it with non-Rails projects.

## Installation

You can install fablicop with this command:

```console
gem install fablicop
```

Or, run `bundle install` after adding this line to your application's Gemfile:

```ruby
gem 'fablicop', require: false
```

## Getting started

Set up `.rubocop.yml` with the command below.

```console
fablicop init
```

`init` generates the following directive to your `.rubocop.yml`:

```yaml
inherit_gem:
  fablicop:
    - "config/.base_rubocop.yml"
```

## Usage

After configuration, your RuboCop now sees fablicop's configuration. Just run `rubocop` as usual.

```console
rubocop
```

Or, prefix `bundle exec`.

```console
bundle exec rubocop
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Fablic/fablicop.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
