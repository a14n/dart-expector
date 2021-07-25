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

import 'package:test/test.dart' as test;

import '../../expector_base.dart';

/// Expectations for [num].
extension NumExpector<T extends num> on Expector<T> {
  /// Checks that the tested num is negative.
  void get isNegative {
    test.expect(value, test.isNegative);
  }

  /// Checks that the tested num is not negative.
  void get isNonNegative {
    test.expect(value, test.isNonNegative);
  }

  /// Checks that the tested num is positive.
  void get isPositive {
    test.expect(value, test.isPositive);
  }

  /// Checks that the tested num is not positive.
  void get isNonPositive {
    test.expect(value, test.isNonPositive);
  }

  /// Checks that the tested num is zero.
  void get isZero {
    test.expect(value, test.isZero);
  }

  /// Checks that the tested num is not zero.
  void get isNonZero {
    test.expect(value, test.isNonZero);
  }

  /// Checks that the tested num is within [delta] of some [value].
  void closeTo(T value, T delta) {
    test.expect(this.value, test.closeTo(value, delta));
  }

  /// Checks that the tested num is less than the given [value].
  void lessThan(T value) {
    test.expect(this.value, test.lessThan(value));
  }

  /// Checks that the tested num is less than or equal to the given [value].
  void lessThanOrEqualTo(T value) {
    test.expect(this.value, test.lessThanOrEqualTo(value));
  }

  /// Checks that the tested num is greater than the given [value].
  void greaterThan(T value) {
    test.expect(this.value, test.greaterThan(value));
  }

  /// Checks that the tested num is greater than or equal to the given [value].
  void greaterThanOrEqualTo(T value) {
    test.expect(this.value, test.greaterThanOrEqualTo(value));
  }
}
