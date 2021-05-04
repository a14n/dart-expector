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

import 'package:expector/src/dart/core/object.dart';
import 'package:expector/src/expector_base.dart';
import 'package:test/test.dart';

void main() {
  group('ObjectExpector.equals', () {
    test('succeeds with 2 null', () {
      expect(
        () => expectThat(null).equals(null),
        returnsNormally,
      );
    });
    test('succeeds with 2 nonnull', () {
      expect(
        () => expectThat('nonnull').equals('nonnull'),
        returnsNormally,
      );
    });
    test('throws with null.equals(nonnull)', () {
      expect(
        () => expectThat<String?>(null).equals('nonnull'),
        throwsA(isA<TestFailure>()),
      );
    });
    test('throws with nonnull.equals(null)', () {
      expect(
        () => expectThat<String?>('nonnull').equals(null),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NonNullableObjectExpector.isA', () {
    test('succeeds with exactly the same type', () {
      expect(
        () => expectThat('').isA<String>(),
        returnsNormally,
      );
    });
    test('succeeds with a super type', () {
      expect(
        () => expectThat('').isA<Object>(),
        returnsNormally,
      );
    });
    test('throws with bad', () {
      expect(
        () => expectThat('').isA<num>(),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NonNullableObjectExpector.hasRuntimeType', () {
    test('succeeds with exactly the good type', () {
      expect(
        () => expectThat('').hasRuntimeType(String),
        returnsNormally,
      );
    });
    test('throws with bad', () {
      expect(
        () => expectThat('').hasRuntimeType(num),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NonNullableObjectExpector.isIdenticalTo', () {
    test('succeeds with the same instance', () {
      var o = Empty();
      expect(
        () => expectThat(o).isIdenticalTo(o),
        returnsNormally,
      );
    });
    test('succeeds with the same const instance', () {
      expect(
        () => expectThat(const Empty()).isIdenticalTo(const Empty()),
        returnsNormally,
      );
    });
    test('throws with different instance even if == returns true', () {
      expect(
        () => expectThat(Empty()).isIdenticalTo(Empty()),
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NonNullableObjectExpector.satisfies', () {
    test('succeeds with a good predicate', () {
      expect(
        () => expectThat(1).satisfies((i) => i.isFinite),
        returnsNormally,
      );
    });
    test('throws with a bad predicate', () {
      expect(
        () => expectThat(1).satisfies((i) => i.isInfinite),
        throwsA(allOf(
          isA<TestFailure>(),
          predicate(
            (e) => (e as TestFailure).message!.contains('satisfies function'),
          ),
        )),
      );
    });
    test('throws with a bad predicate and provided message', () {
      expect(
        () => expectThat(1).satisfies((i) => i.isInfinite, 'hello world'),
        throwsA(allOf(
          isA<TestFailure>(),
          predicate(
            (e) => (e as TestFailure).message!.contains('hello world'),
          ),
        )),
      );
    });
  });
  group('NullableExpector.isNull', () {
    test('succeeds with null', () {
      expect(
        () => expectThat<String?>(null).isNull,
        returnsNormally,
      );
    });
    test('throws with nonnull', () {
      expect(
        () => expectThat<String?>('').isNull,
        throwsA(isA<TestFailure>()),
      );
    });
  });
  group('NullableExpector.isNotNull', () {
    test('succeeds with nonnull', () {
      expect(
        () => expectThat<String?>('').isNotNull,
        returnsNormally,
      );
    });
    test('throws with null', () {
      expect(
        () => expectThat<String?>(null).isNotNull,
        throwsA(isA<TestFailure>()),
      );
    });
  });
}

class Empty {
  const Empty();
  @override
  int get hashCode => 0;
  @override
  bool operator ==(Object other) => true;
}
