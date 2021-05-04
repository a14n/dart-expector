# Expector

[![Build Status](https://github.com/a14n/dart-expector/actions/workflows/dart.yml/badge.svg)](https://github.com/a14n/dart-expector/actions/workflows/dart.yml)

This package provides a way to write tests more easily in a fluent
manner (with content assists).

Instead of writing `expect(value,` and provide a matcher to check the value,
just type `expectThat(value).` and let the content assist do its job!

## Usage

A simple usage example:

```dart
import 'package:expector/expector.dart';
import 'package:test/test.dart';

String? f() => 'hello';

void main() {
  test('f() returns a 5-length string', () {
    expectThat(f()).isNotNull
      ..isNotEmpty
      ..hasLength(5);
  });
}
```

## What's the problem with test package ?

The [test package](https://pub.dev/packages/test) allows users to describe
expectations with matchers: `expect(value, matcher)`. Unfortunatelly there are
a lot of matchers and it's easy to use a matcher that has no meaning regarding
the value tested. In this case, there will be no error at compile time but there
will be a runtime error. For instance:

```dart
import 'package:test/test.dart';

String? f() => 'hello';

void main() {
  test('f() returns a 5-length string', () {
    expect(f(), isNotNull);
    expect(f(), isNotEmpty);
    expect(f(), hasLength(5));
    expect(f(), isNaN); // no compile time
  });
}
```

Another issue is that there is no content assist to help user. Everything is
suitable as matcher and it could be hard to find the good one.

## License ##

Apache 2.0
