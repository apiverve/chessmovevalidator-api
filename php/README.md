# Chess Move Validator API - PHP Package

Chess Move Validator verifies algebraic chess notation and identifies move types including castling, captures, checks, and promotions.

## Installation

Install via Composer:

```bash
composer require apiverve/chessmovevalidator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Chessmovevalidator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['move' => 'Nf3']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Chessmovevalidator\Client;
use APIVerve\Chessmovevalidator\Exceptions\APIException;
use APIVerve\Chessmovevalidator\Exceptions\ValidationException;

try {
    $response = $client->execute(['move' => 'Nf3']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/chessmovevalidator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/chessmovevalidator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/chessmovevalidator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
