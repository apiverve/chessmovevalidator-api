# Chess Move Validator API - Dart/Flutter Client

Chess Move Validator verifies algebraic chess notation and identifies move types including castling, captures, checks, and promotions.

[![pub package](https://img.shields.io/pub/v/apiverve_chessmovevalidator.svg)](https://pub.dev/packages/apiverve_chessmovevalidator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Chess Move Validator API](https://apiverve.com/marketplace/chessmovevalidator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_chessmovevalidator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_chessmovevalidator/apiverve_chessmovevalidator.dart';

void main() async {
  final client = ChessmovevalidatorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'move': 'Nf3'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Chess Move Validator API](https://apiverve.com/marketplace/chessmovevalidator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/chessmovevalidator](https://docs.apiverve.com/ref/chessmovevalidator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
