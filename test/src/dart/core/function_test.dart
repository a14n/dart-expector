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

import 'package:expector/src/dart/core/function.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('FunctionExpector.throws', () {
    test('succeeds with function that throws', () {
      expect(
        () async {
          await expectThat(() => throw ArgumentError.notNull()).throws;
        },
        returnsNormally,
      );
    });
    test("throws with function that doesn't throw", () {
      expect(
        () async {
          await expectThat(() {}).throws;
        },
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('FunctionExpector.throwsA', () {
    test('succeeds with function that throws', () {
      expect(
        () async {
          await expectThat(() => throw ArgumentError.notNull())
              .throwsA<ArgumentError>();
        },
        returnsNormally,
      );
    });
    test("throws with function that doesn't throw", () {
      expect(
        () async {
          await expectThat(() {}).throwsA<ArgumentError>();
        },
        throwsA(isA<TestFailure>()),
      );
    });
    test("throws with function that doesn't throw the good type", () {
      expect(
        () async {
          await expectThat(() => throw StateError('')).throwsA<ArgumentError>();
        },
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('FunctionExpector.returnsNormally', () {
    test('succeeds with function that returns normally', () {
      expect(
        () async {
          await expectThat(() {}).returnsNormally();
        },
        returnsNormally,
      );
    });
    test('throws with function that throws', () {
      expect(
        () async {
          await expectThat(() => throw ArgumentError.notNull())
              .returnsNormally();
        },
        throwsA(isA<TestFailure>()),
      );
    });
  });
}
