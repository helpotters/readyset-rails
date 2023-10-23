# `readyset-rails` Gem

The `readyset-rails` gem provides a seamless integration with [ReadySet](readyset.io), allowing you to easily cache queries and interact with the ReadySet database directly from your Ruby on Rails application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'readyset-rails'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install readyset-rails
```

## Configuration

By default, `readyset-rails` will attempt to establish a connection using the `READYSET_URL` environment variable. If this isn't set, it will fall back to using the default connection URL from your `database.yml`.

To configure the gem, you can use an initializer:

```ruby

# config/initializers/readyset_rails.rb

Readyset.configure do |config|
config.connection_url = "your_custom_db_url_here" # Optional
end
```

## Usage

### Creating a Cache

To create a cache, you can use the `create_cache` method:

```ruby
Readyset::Command.create_cache("cache_name", "SELECT \* FROM users WHERE age > 30", always: true)
```

The `always` parameter is optional and defaults to `false`.

### Listing Caches

To list all caches:

```ruby
caches = Readyset::Command.show_caches
```

To list specific caches by query ID:

```ruby
caches = Readyset::Command.show_caches(1) # Where 1 is the query ID
```

### Dropping a Cache

To drop a cache:

```ruby
Readyset::Command.drop_cache(cache_id)
```

## Testing

After setting up, run:

```bash
$ rspec
```

## Contributing

Bug reports and pull requests are welcome on GitHub at github.com/helpotters/readyset-rails

## License

TO BE DECIDED.
