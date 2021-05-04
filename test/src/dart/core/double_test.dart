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

import 'package:expector/src/dart/core/double.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('DoubleExpector.isNaN', () {
    test('succeeds with NaN', () {
      expect(
        () => expectThat(double.nan).isNaN,
        returnsNormally,
      );
    });
    test('throws with finite value', () {
      expect(
        () => expectThat(3.14).isNaN,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with infinite', () {
      expect(
        () => expectThat(double.infinity).isNaN,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('DoubleExpector.isNotNaN', () {
    test('succeeds with finite value', () {
      expect(
        () => expectThat(3.14).isNotNaN,
        returnsNormally,
      );
    });
    test('succeeds with infinite', () {
      expect(
        () => expectThat(double.infinity).isNotNaN,
        returnsNormally,
      );
    });
    test('throws with nan', () {
      expect(
        () => expectThat(double.nan).isNotNaN,
        throwsA(isA<TestFailure>()),
      );
    });
  });
}
