# BrewInventory

A ruby gem that digs through the brew dependency tree, in order to give a list of the main packages installed.  Useful for configuation portability.

Want a quick copypasta code for `irb` to get your brew packages?  [Use this.](https://gist.github.com/NewAlexandria/b0d948a8f7fe0e35223b)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'brew_inventory'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install brew_inventory

## Usage

From the command-line:

    brew_inventory

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment. Run `bundle exec brew_inventory` to use the gem in this directory, ignoring other installed copies of this gem.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/brew_inventory. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

