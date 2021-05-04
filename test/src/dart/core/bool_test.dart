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

import 'package:expector/src/dart/core/bool.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('BoolExpector.isTrue', () {
    test('succeeds with true', () {
      expect(
        () => expectThat(true).isTrue,
        returnsNormally,
      );
    });
    test('throws with false', () {
      expect(
        () => expectThat(false).isTrue,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('BoolExpector.isFalse', () {
    test('succeeds with false', () {
      expect(
        () => expectThat(false).isFalse,
        returnsNormally,
      );
    });
    test('succeeds with true', () {
      expect(
        () => expectThat(true).isFalse,
        throwsA(isA<TestFailure>()),
      );
    });
  });
}
