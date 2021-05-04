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

extension FutureExpector on Expector<Future> {
  /// Checks that the expected value completes successfully with any value.
  Future<void> get completes async {
    await test_package.expectLater(value, test_package.completes);
  }

  /// Checks that the expected value completes successfully with any value.
  Future<void> throws<R>() async {
    await test_package.expectLater(
      () => value,
      test_package.throwsA(test_package.isA<R>()),
    );
  }

  /// Checks that the expected value does not complete.
  void get doesNotComplete {
    test_package.expect(value, test_package.doesNotComplete);
  }
}
