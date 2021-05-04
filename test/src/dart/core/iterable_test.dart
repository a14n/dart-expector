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

import 'package:expector/src/dart/core/iterable.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('IterableExpector.isEmpty', () {
    test('succeeds with empty list', () {
      expect(
        () => expectThat([]).isEmpty,
        returnsNormally,
      );
    });
    test('throws with non empty list', () {
      expect(
        () => expectThat([1]).isEmpty,
        throwsA(isA<TestFailure>()),
      );
    });
    test('succeeds with empty set', () {
      expect(
        () => expectThat(<int>{}).isEmpty,
        returnsNormally,
      );
    });
    test('throws with non empty set', () {
      expect(
        () => expectThat({1}).isEmpty,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('IterableExpector.isNotEmpty', () {
    test('succeeds with non empty list', () {
      expect(
        () => expectThat([1]).isNotEmpty,
        returnsNormally,
      );
    });
    test('throws with empty list', () {
      expect(
        () => expectThat([]).isNotEmpty,
        throwsA(isA<TestFailure>()),
      );
    });
    test('succeeds with non empty set', () {
      expect(
        () => expectThat({1}).isNotEmpty,
        returnsNormally,
      );
    });
    test('throws with empty set', () {
      expect(
        () => expectThat(<int>{}).isNotEmpty,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('IterableExpector.hasLength', () {
    test('succeeds with list having the good length', () {
      expect(
        () => expectThat([1]).hasLength(1),
        returnsNormally,
      );
    });
    test('throws with list having a bad length', () {
      expect(
        () => expectThat([1]).hasLength(2),
        throwsA(isA<TestFailure>()),
      );
    });
    test('succeeds with set having the good length', () {
      expect(
        () => expectThat({1}).hasLength(1),
        returnsNormally,
      );
    });
    test('throws with set having a bad length', () {
      expect(
        () => expectThat({1}).hasLength(2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('IterableExpector.contains', () {
    test('succeeds with list having the good element', () {
      expect(
        () => expectThat([1]).contains(1),
        returnsNormally,
      );
    });
    test('throws with list not having the good element', () {
      expect(
        () => expectThat([1]).contains(2),
        throwsA(isA<TestFailure>()),
      );
    });
    test('succeeds with set having the good element', () {
      expect(
        () => expectThat({1}).contains(1),
        returnsNormally,
      );
    });
    test('throws with set not having the good element', () {
      expect(
        () => expectThat({1}).contains(2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('IterableExpector.containsAll', () {
    test('succeeds with list having the good elements', () {
      expect(
        () => expectThat([0, 1, 0, 2, 0]).containsAll({1, 2}),
        returnsNormally,
      );
    });
    test('throws with list not having the good elements', () {
      expect(
        () => expectThat([0, 1, 0, 2, 0]).containsAll({2, 4}),
        throwsA(isA<TestFailure>()),
      );
    });
    test('succeeds with set having the good elements', () {
      expect(
        () => expectThat({1, 2, 4}).containsAll([1, 4]),
        returnsNormally,
      );
    });
    test('throws with set not having the good elements', () {
      expect(
        () => expectThat({1, 2, 4}).containsAll([3, 1]),
        throwsA(isA<TestFailure>()),
      );
    });
  });
}
