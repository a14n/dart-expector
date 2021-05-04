// Copyright (c) 2021, Alexandre Ardhuin
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:expector/src/dart/core/string.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('StringExpector.isEmpty', () {
    test('succeeds with empty string', () {
      expect(
        () => expectThat('').isEmpty,
        returnsNormally,
      );
    });
    test('throws with non empty string', () {
      expect(
        () => expectThat('a').isEmpty,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('StringExpector.isNotEmpty', () {
    test('succeeds with non empty string', () {
      expect(
        () => expectThat('a').isNotEmpty,
        returnsNormally,
      );
    });
    test('throws with empty string', () {
      expect(
        () => expectThat('').isNotEmpty,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('StringExpector.hasLength', () {
    test('succeeds with the good length', () {
      expect(
        () => expectThat('a').hasLength(1),
        returnsNormally,
      );
    });
    test('throws with a bad length', () {
      expect(
        () => expectThat('a').hasLength(2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('StringExpector.contains', () {
    test('succeeds with the same string', () {
      expect(
        () => expectThat('abc').contains('abc'),
        returnsNormally,
      );
    });
    test('succeeds with the a substring', () {
      expect(
        () => expectThat('abc').contains('bc'),
        returnsNormally,
      );
    });
    test('succeeds with a regexp', () {
      expect(
        () => expectThat('abc').contains(RegExp('[a-z]{3}')),
        returnsNormally,
      );
    });
    test('throws with a bad substring', () {
      expect(
        () => expectThat('abc').contains('ac'),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with a bad regexp', () {
      expect(
        () => expectThat('abc').contains(RegExp('[A-Z]{3}')),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('StringExpector.startsWith', () {
    test('succeeds with the same string', () {
      expect(
        () => expectThat('abc').startsWith('abc'),
        returnsNormally,
      );
    });
    test('succeeds with the a substring', () {
      expect(
        () => expectThat('abc').startsWith('ab'),
        returnsNormally,
      );
    });
    test('throws with a bad substring', () {
      expect(
        () => expectThat('abc').startsWith('bc'),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('StringExpector.equalsIgnoringCase', () {
    test('succeeds with the same string', () {
      expect(
        () => expectThat('abc').equalsIgnoringCase('abc'),
        returnsNormally,
      );
    });
    test('succeeds with the a substring', () {
      expect(
        () => expectThat('aBc').equalsIgnoringCase('Abc'),
        returnsNormally,
      );
    });
    test('throws with a different string', () {
      expect(
        () => expectThat('abc').equalsIgnoringCase('bc'),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('StringExpector.isBlank', () {
    test('succeeds with empty string', () {
      expect(
        () => expectThat('').isBlank,
        returnsNormally,
      );
    });
    test('succeeds with blank string and newline', () {
      expect(
        () => expectThat(' \t \n \r ').isBlank,
        returnsNormally,
      );
    });
    test('throws with a different string', () {
      expect(
        () => expectThat('abc').isBlank,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('StringExpector.equalsIgnoringWhitespace', () {
    test('succeeds with the same string', () {
      expect(
        () => expectThat('a b c').equalsIgnoringWhitespace('a b c'),
        returnsNormally,
      );
    });
    test('succeeds with the a substring', () {
      expect(
        () => expectThat(' a \rb  \n  c').equalsIgnoringWhitespace(' \t a b c'),
        returnsNormally,
      );
    });
    test('throws with a different string', () {
      expect(
        () => expectThat('a b c').equalsIgnoringWhitespace('a B c'),
        throwsA(isA<TestFailure>()),
      );
    });
  });
}
