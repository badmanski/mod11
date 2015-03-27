# Mod11

Modulus 11 Self-Check digits

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mod11'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mod11

## Usage

````ruby
mod = Mod11.new '12312321321'
=> #<Mod11:0x007ffdd316d888 @initial_value="12312321321">
mod.check_digit
=> 6
mod.full_value
=> "123123213216"
mod = Mod11.new 12312321321
=> #<Mod11:0x007ffdd3145428 @initial_value=12312321321>
mod.check_digit
=> 6
mod.full_value
=> "123123213216"
````

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mod11/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
