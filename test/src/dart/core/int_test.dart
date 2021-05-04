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

import 'package:expector/src/dart/core/int.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('IntExpector.isEven', () {
    test('succeeds with even', () {
      expect(
        () => expectThat(2).isEven,
        returnsNormally,
      );
    });
    test('throws with odd', () {
      expect(
        () => expectThat(3).isEven,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('IntExpector.isOdd', () {
    test('succeeds with odd', () {
      expect(
        () => expectThat(3).isOdd,
        returnsNormally,
      );
    });
    test('throws with even', () {
      expect(
        () => expectThat(2).isOdd,
        throwsA(isA<TestFailure>()),
      );
    });
  });
}
