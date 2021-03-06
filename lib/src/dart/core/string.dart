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

/// Expectations for [String].
extension StringExpector on Expector<String> {
  /// Checks that the tested string is empty.
  void get isEmpty {
    test.expect(value, test.isEmpty);
  }

  /// Checks that the tested string is not empty.
  void get isNotEmpty {
    test.expect(value, test.isNotEmpty);
  }

  /// Checks that the tested string has the good [length].
  void hasLength(int length) {
    test.expect(value, test.hasLength(length));
  }

  /// Checks that the tested string contains the provided [pattern].
  void contains(Pattern pattern) {
    test.expect(value, test.contains(pattern));
  }

  /// Checks that the tested string starts with the provided [prefix].
  void startsWith(String prefix) {
    test.expect(value, test.startsWith(prefix));
  }

  /// Checks that the tested string is equals ignoring case with [other].
  void equalsIgnoringCase(String other) {
    test.expect(value, test.equalsIgnoringCase(other));
  }

  /// Checks that the tested string is equals ignoring whitespaces with [other].
  void equalsIgnoringWhitespace(String other) {
    test.expect(value, test.equalsIgnoringWhitespace(other));
  }

  /// Checks that the tested string is blank.
  void get isBlank {
    expectThat(value.trim()).isEmpty;
  }
}
