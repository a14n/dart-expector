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

/// Expectations for [Function].
extension FunctionExpector on Expector<Function> {
  /// Checks that the execution of the tested function throws.
  Future<Expector<Object>> get throws async {
    var capture = CaptureValueMatcher();
    await test.expectLater(value, test.throwsA(capture));
    return Expector<Object>(capture.value);
  }

  /// Checks that the execution of the tested function returns normally.
  Future<void> returnsNormally() async {
    await test.expectLater(value, test.returnsNormally);
  }
}
