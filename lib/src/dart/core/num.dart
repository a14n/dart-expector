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

extension NumExpector on Expector<num> {
  void get isNegative {
    test_package.expect(value, test_package.isNegative);
  }

  void get isNonNegative {
    test_package.expect(value, test_package.isNonNegative);
  }

  void get isPositive {
    test_package.expect(value, test_package.isPositive);
  }

  void get isNonPositive {
    test_package.expect(value, test_package.isNonPositive);
  }

  void get isZero {
    test_package.expect(value, test_package.isZero);
  }

  void get isNonZero {
    test_package.expect(value, test_package.isNonZero);
  }

  void closeTo(num value, num delta) {
    test_package.expect(this.value, test_package.closeTo(value, delta));
  }
}
