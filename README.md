# Coinable

Communicate with Bitcoin, Litecoin, Emercoin and other Altcoin JSON RPC the Ruby way.

Coinable implements original Bitcoin API methods (not all of them yet). So if your altcoin based on them you are free to use Coinable.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coinable'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coinable

## Usage

```ruby
class Bitcoin
  extend Coinable
end

Bitcoin.configure do |config|
  config.host = '123.45.678.91' # default: 'localhost'
  config.port = 1337            # default: 8543
  config.user = 'admin'         # default: 'rpcuser'
  config.password = 'swordfish' # default: 'rpcpassword'
end

Bitcoin.new_address #=> '14gnToPKhRKhRKXZHV4mJyu8N5EFAoFU6G'

class Litecoin
  extend Coinable
end

Litecoin.configure do |config|
  # set host, port, user and password
end

Litecoin.new_address #=> 'LcaNTWEF9FMUnwKkvtzfRtxwsqs979LLom'
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dmxhZGp1c2hh/coinable.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
