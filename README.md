# Jekyll::Clean::Descriptions

Use this to automatically create shorter descriptions based on the excerpt value.
It will clean HTML, remove new lines, and truncate to 160 characters.

## Installation

Add this line to your application's Gemfile:

```ruby
group :jekyll_plugins do
  gem 'jekyll-clean-descriptions'
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-clean-descriptions

## Usage

Currently none. Uses Jekyll Hooks to automatically shorten post excerpts and set
a description variable for [jekyll-seo-tag]() and anything else that looks for
`page.description` to be set.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/candland/jekyll-clean-descriptions.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
