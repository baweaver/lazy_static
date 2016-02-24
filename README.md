# LazyStatic

It's a lazy static type checker, simple as this:

```
[1] pry(main)> LazyStatic.check 5, is_a: Integer
=> true

[2] pry(main)> LazyStatic.check 5, is_a: String
StandardError: Expected 5 to be String
from /Users/lemur/dev/lazy_static/lib/lazy_static.rb:5:in `check'
```

...and that's all it'll ever need to be.

## Installation

Add this line to your application's Gemfile:

    gem 'lazy_static'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lazy_static

## Contributing

1. Fork it ( https://github.com/baweaver/lazy_static/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
