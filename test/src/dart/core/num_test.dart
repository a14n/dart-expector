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

import 'package:expector/src/dart/core/num.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('NumExpector.isNegative', () {
    test('succeeds with negative int', () {
      expect(
        () => expectThat(-1).isNegative,
        returnsNormally,
      );
    });
    test('succeeds with negative double', () {
      expect(
        () => expectThat(-1.2).isNegative,
        returnsNormally,
      );
    });
    test('throws with NaN', () {
      expect(
        () => expectThat(double.nan).isNegative,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with 0', () {
      expect(
        () => expectThat(0).isNegative,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with 0.0', () {
      expect(
        () => expectThat(0.0).isNegative,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with positive int', () {
      expect(
        () => expectThat(1).isNegative,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with positive double', () {
      expect(
        () => expectThat(1.2).isNegative,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.isNonNegative', () {
    test('succeeds with positive int', () {
      expect(
        () => expectThat(1).isNonNegative,
        returnsNormally,
      );
    });
    test('succeeds with positive double', () {
      expect(
        () => expectThat(1.2).isNonNegative,
        returnsNormally,
      );
    });
    test('succeeds with 0', () {
      expect(
        () => expectThat(0).isNonNegative,
        returnsNormally,
      );
    });
    test('succeeds with 0.0', () {
      expect(
        () => expectThat(0.0).isNonNegative,
        returnsNormally,
      );
    });
    test('throws with NaN', () {
      expect(
        () => expectThat(double.nan).isNonNegative,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with negative int', () {
      expect(
        () => expectThat(-1).isNonNegative,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with negative double', () {
      expect(
        () => expectThat(-1.2).isNonNegative,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.isPositive', () {
    test('succeeds with positive int', () {
      expect(
        () => expectThat(1).isPositive,
        returnsNormally,
      );
    });
    test('succeeds with positive double', () {
      expect(
        () => expectThat(1.2).isPositive,
        returnsNormally,
      );
    });
    test('throws with NaN', () {
      expect(
        () => expectThat(double.nan).isPositive,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with 0', () {
      expect(
        () => expectThat(0).isPositive,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with 0.0', () {
      expect(
        () => expectThat(0.0).isPositive,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with negative int', () {
      expect(
        () => expectThat(-1).isPositive,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with negative double', () {
      expect(
        () => expectThat(-1.2).isPositive,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.isNonPositive', () {
    test('succeeds with negative int', () {
      expect(
        () => expectThat(-1).isNonPositive,
        returnsNormally,
      );
    });
    test('succeeds with negative double', () {
      expect(
        () => expectThat(-1.2).isNonPositive,
        returnsNormally,
      );
    });
    test('succeeds with 0', () {
      expect(
        () => expectThat(0).isNonPositive,
        returnsNormally,
      );
    });
    test('succeeds with 0.0', () {
      expect(
        () => expectThat(0.0).isNonPositive,
        returnsNormally,
      );
    });
    test('throws with NaN', () {
      expect(
        () => expectThat(double.nan).isNonPositive,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with positive int', () {
      expect(
        () => expectThat(1).isNonPositive,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with positive double', () {
      expect(
        () => expectThat(1.2).isNonPositive,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.isZero', () {
    test('succeeds with 0', () {
      expect(
        () => expectThat(0).isZero,
        returnsNormally,
      );
    });
    test('succeeds with 0.0', () {
      expect(
        () => expectThat(0.0).isZero,
        returnsNormally,
      );
    });
    test('throws with NaN', () {
      expect(
        () => expectThat(double.nan).isZero,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with positive int', () {
      expect(
        () => expectThat(1).isZero,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with positive double', () {
      expect(
        () => expectThat(1.2).isZero,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with negative int', () {
      expect(
        () => expectThat(-1).isZero,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with negative double', () {
      expect(
        () => expectThat(-1.2).isZero,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.isNonZero', () {
    test('succeeds with positive int', () {
      expect(
        () => expectThat(1).isNonZero,
        returnsNormally,
      );
    });
    test('succeeds with positive double', () {
      expect(
        () => expectThat(1.2).isNonZero,
        returnsNormally,
      );
    });
    test('succeeds with negative int', () {
      expect(
        () => expectThat(-1).isNonZero,
        returnsNormally,
      );
    });
    test('succeeds with negative double', () {
      expect(
        () => expectThat(-1.2).isNonZero,
        returnsNormally,
      );
    });
    test('throws with NaN', () {
      expect(
        () => expectThat(double.nan).isNonZero,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with 0', () {
      expect(
        () => expectThat(0).isNonZero,
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with 0.0', () {
      expect(
        () => expectThat(0.0).isNonZero,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.closeTo', () {
    test('succeeds with int value closed', () {
      expect(
        () => expectThat(1).closeTo(2, 3),
        returnsNormally,
      );
    });
    test('succeeds with double value closed', () {
      expect(
        () => expectThat(1.1).closeTo(2.2, 3.3),
        returnsNormally,
      );
    });
    test('throws with int value not closed', () {
      expect(
        () => expectThat(10).closeTo(2, 3),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with double not closed', () {
      expect(
        () => expectThat(11.1).closeTo(2.2, 3.3),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.lessThan', () {
    test('succeeds with int value lower', () {
      expect(
        () => expectThat(1).lessThan(2),
        returnsNormally,
      );
    });
    test('succeeds with double value lower', () {
      expect(
        () => expectThat(1.1).lessThan(1.2),
        returnsNormally,
      );
    });
    test('throws with int value greater', () {
      expect(
        () => expectThat(3).lessThan(2),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with double greater', () {
      expect(
        () => expectThat(2.3).lessThan(2.2),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with int value equals', () {
      expect(
        () => expectThat(1).lessThan(1),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with double value equals', () {
      expect(
        () => expectThat(2.2).lessThan(2.2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.lessThanOrEqualTo', () {
    test('succeeds with int value lower', () {
      expect(
        () => expectThat(1).lessThanOrEqualTo(2),
        returnsNormally,
      );
    });
    test('succeeds with double value lower', () {
      expect(
        () => expectThat(1.1).lessThanOrEqualTo(1.2),
        returnsNormally,
      );
    });
    test('succeeds with int value equals', () {
      expect(
        () => expectThat(1).lessThanOrEqualTo(1),
        returnsNormally,
      );
    });
    test('succeeds with double value equals', () {
      expect(
        () => expectThat(1.1).lessThanOrEqualTo(1.1),
        returnsNormally,
      );
    });
    test('throws with int value greater', () {
      expect(
        () => expectThat(3).lessThanOrEqualTo(2),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with double greater', () {
      expect(
        () => expectThat(2.3).lessThanOrEqualTo(2.2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.greaterThan', () {
    test('succeeds with int value greater', () {
      expect(
        () => expectThat(1).greaterThan(0),
        returnsNormally,
      );
    });
    test('succeeds with double value greater', () {
      expect(
        () => expectThat(1.1).greaterThan(1.0),
        returnsNormally,
      );
    });
    test('throws with int value lower', () {
      expect(
        () => expectThat(3).greaterThan(4),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with double lower', () {
      expect(
        () => expectThat(2.3).greaterThan(2.4),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with int value equals', () {
      expect(
        () => expectThat(1).greaterThan(1),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with double value equals', () {
      expect(
        () => expectThat(2.2).greaterThan(2.2),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NumExpector.greaterThanOrEqualTo', () {
    test('succeeds with int value greater', () {
      expect(
        () => expectThat(1).greaterThanOrEqualTo(0),
        returnsNormally,
      );
    });
    test('succeeds with double value greater', () {
      expect(
        () => expectThat(1.1).greaterThanOrEqualTo(1.0),
        returnsNormally,
      );
    });
    test('succeeds with int value equals', () {
      expect(
        () => expectThat(1).greaterThanOrEqualTo(1),
        returnsNormally,
      );
    });
    test('succeeds with double value equals', () {
      expect(
        () => expectThat(1.1).greaterThanOrEqualTo(1.1),
        returnsNormally,
      );
    });
    test('throws with int value lower', () {
      expect(
        () => expectThat(3).greaterThanOrEqualTo(4),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with double lower', () {
      expect(
        () => expectThat(2.3).greaterThanOrEqualTo(2.4),
        throwsA(isA<TestFailure>()),
      );
    });
  });
}
