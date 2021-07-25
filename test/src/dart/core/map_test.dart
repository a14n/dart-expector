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

import 'package:expector/src/dart/core/map.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('MapExpector.isEmpty', () {
    test('succeeds with empty set', () {
      expect(
        () => expectThat({}).isEmpty,
        returnsNormally,
      );
    });
    test('throws with non empty set', () {
      expect(
        () => expectThat({1: 2}).isEmpty,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('MapExpector.isNotEmpty', () {
    test('succeeds with non empty set', () {
      expect(
        () => expectThat({1: 2}).isNotEmpty,
        returnsNormally,
      );
    });
    test('throws with empty set', () {
      expect(
        () => expectThat({}).isNotEmpty,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('MapExpector.hasLength', () {
    test('succeeds with the good length', () {
      expect(
        () => expectThat({1: 2}).hasLength(1),
        returnsNormally,
      );
    });
    test('throws with a bad length', () {
      expect(
        () => expectThat({1: 2}).hasLength(2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('MapExpector.containsKey', () {
    test('succeeds with the good key', () {
      expect(
        () => expectThat({1: 2}).containsKey(1),
        returnsNormally,
      );
    });
    test('throws with a bad key', () {
      expect(
        () => expectThat({1: 2}).containsKey(2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('MapExpector.containsPair', () {
    test('succeeds with the good key-value', () {
      expect(
        () => expectThat({1: 2}).containsPair(1, 2),
        returnsNormally,
      );
    });
    test('throws with a good key but a bad value', () {
      expect(
        () => expectThat({1: 2}).containsPair(1, 1),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with a bad key', () {
      expect(
        () => expectThat({1: 2}).containsPair(2, 2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
}
