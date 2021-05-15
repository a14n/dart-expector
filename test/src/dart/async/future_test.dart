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

import 'dart:async';

import 'package:expector/src/dart/async/future.dart';
import 'package:expector/src/dart/core/object.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('FutureExpector.completes', () {
    test('succeeds with Future completed with value', () {
      expect(
        () => expectThat(Future.value()).completes,
        returnsNormally,
      );
    });
    test('throws with Future completed with error', () {
      expect(
        () => expectThat(Future.error('')).completes,
        throwsA(isA<String>()),
      );
    });
    test('throws with Future not completed', () async {
      expect(
        expectThat(Completer().future).completes,
        throwsA(isA<TestFailure>()),
      );
    }, skip: true); // how to test that ?
  });
  group('FutureExpector.throws', () {
    test('succeeds with Future completed with error', () {
      expect(
        () async => (await expectThat(Future.error('my bad')).throws)
            .isA<String>()
            .equals('my bad'),
        returnsNormally,
      );
    });
    test('throws with Future completed with value', () {
      expect(
        () => expectThat(Future.value()).throws,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with Future not completed', () async {
      expect(
        expectThat(Completer().future).throws,
        throwsA(isA<TestFailure>()),
      );
    }, skip: true); // how to test that ?
  });
  group('FutureExpector.throwsA', () {
    test('succeeds with Future completed with error of the good type', () {
      expect(
        () async => (await expectThat(Future.error('my bad')).throwsA<String>())
            .isA<String>()
            .equals('my bad'),
        returnsNormally,
      );
    });
    test('throws with Future completed with value', () {
      expect(
        () => expectThat(Future.value()).throwsA<String>(),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with Future completed with value of a bad type', () {
      expect(
        () => expectThat(Future.value(1)).throwsA<String>(),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with Future not completed', () async {
      expect(
        expectThat(Completer().future).throwsA<String>(),
        throwsA(isA<TestFailure>()),
      );
    }, skip: true); // how to test that ?
  });
  group('FutureExpector.doesNotComplete', () {
    test('succeeds with Future not completed', () {
      expect(
        () => expectThat(Completer().future).doesNotComplete,
        returnsNormally,
      );
    });
    test('throws with Future completed with value', () {
      expectLater(
        () => expectThat(Future.sync(() => null)).doesNotComplete,
        throwsA(isA<TestFailure>()),
      );
    }, skip: true); // how to test that ?
    test('throws with Future completed with error', () {
      expect(
        () => expectThat(Future.error('')).doesNotComplete,
        throwsA(isA<TestFailure>()),
      );
    }, skip: true); // how to test that ?
  });
}
