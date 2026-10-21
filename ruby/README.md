# Chess Move Validator API - Ruby Gem

Chess Move Validator verifies algebraic chess notation and identifies move types including castling, captures, checks, and promotions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_chessmovevalidator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_chessmovevalidator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_chessmovevalidator'

# Initialize the client
client = APIVerve::Chessmovevalidator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ move: "Nf3" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ move: "Nf3" })
  puts response["data"]
rescue APIVerve::Chessmovevalidator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Chessmovevalidator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Chessmovevalidator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "move": "Nf3",
    "valid": true,
    "type": "piece move",
    "piece": "N",
    "capture": false,
    "check": false,
    "checkmate": false,
    "promotion": false
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/chessmovevalidator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/chessmovevalidator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/chessmovevalidator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
