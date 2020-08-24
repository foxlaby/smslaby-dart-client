A library for Dart developers.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:

```dart
import 'package:smslaby/smslaby.dart';

void main() {
  var smslaby = SMSLaby();

  smslaby.init('<hashـkey>')
    .lang('<lang>')
    .to('<numberPhone>')
    .message('<message>')
    // .sandbox(true)
    .send((response){
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    });
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/FoxLaby/smslaby-dart-client/issues/replaceme