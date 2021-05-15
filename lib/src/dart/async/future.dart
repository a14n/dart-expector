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

import '../../capture_value_matcher.dart';
import '../../expector_base.dart';
import '../core/object.dart';

/// Expectations for [Future].
extension FutureExpector on Expector<Future> {
  /// Checks that the tested future completes successfully with any value.
  Future<void> get completes async {
    await test.expectLater(value, test.completes);
  }

  /// Checks that the tested future completes with an error.
  Future<Expector<Object>> get throws async {
    var capture = CaptureValueMatcher();
    await test.expectLater(() => value, test.throwsA(capture));
    return Expector<Object>(capture.value);
  }

  /// Checks that the tested future completes with an error of type [T].
  Future<Expector<T>> throwsA<T>() async {
    return (await throws).isA<T>();
  }

  /// Checks that the tested future does not complete.
  void get doesNotComplete {
    test.expect(value, test.doesNotComplete);
  }
}
