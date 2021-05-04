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

import 'package:test/test.dart' as test_package;

import '../../expector_base.dart';

extension ObjectExpector<T extends Object?> on Expector<T> {
  /// Checks that the tested object is equal to [other].
  void equals(T other) {
    test_package.expect(value, test_package.equals(other));
  }
}

extension NonNullableObjectExpector<T extends Object> on Expector<T> {
  /// Checks that the tested object has [R].
  Expector<R> isA<R>() {
    test_package.expect(value, test_package.isA<R>());
    return Expector<R>(value as R);
  }

  /// Checks that the tested object has a runtime type of [type].
  void hasRuntimeType(Type type) {
    test_package.expect(value.runtimeType, test_package.equals(type));
  }

  /// Checks that the tested object is identical to [other].
  void isIdenticalTo(T other) {
    test_package.expect(value, test_package.same(other));
  }

  /// Checks that the tested object satifies a predicate [f].
  void satisfies(
    bool Function(T) f, [
    String description = 'satisfies function',
  ]) {
    test_package.expect(value, test_package.predicate(f, description));
  }
}

extension NullableExpector<T extends Object> on Expector<T?> {
  /// Checks that the tested object is `null`.
  void get isNull {
    test_package.expect(value, test_package.isNull);
  }

  /// Checks that the tested object is not `null`.
  Expector<T> get isNotNull {
    test_package.expect(value, test_package.isNotNull);
    return Expector<T>(value!);
  }
}
