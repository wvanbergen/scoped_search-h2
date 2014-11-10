# ScopedSearch - H2 plugin

This gem adds improved search support for H2 database to scoped_search:
https://github.com/wvanbergen/scoped_search

## Installation and usage

Add this line to your application's Gemfile:

```ruby
gem 'scoped_search-h2'
```

And then, make sure to require it when your application loads, so it is available to scoped search:

``` ruby
require 'scoped_search/h2'
```

Now, use scoped search as you normally would.

## Disclaimer

This code was contributed to scoped search. Unfortunately, I have no means to test it, nor can I test in on Travis CI. This means I cannot help you when you run into trouble.

## Contributing

1. Fork it ( https://github.com/wvanbergen/scoped_search-h2/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
