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

/// Expectations for [double].
extension DoubleExpector on Expector<double> {
  /// Checks that the tested double is the numeric value NaN.
  void get isNaN {
    test.expect(value, test.isNaN);
  }

  /// Checks that the tested double is not the numeric value NaN.
  void get isNotNaN {
    test.expect(value, test.isNotNaN);
  }
}
