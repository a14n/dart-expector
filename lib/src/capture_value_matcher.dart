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

// A test matcher to capture the value tested.
class CaptureValueMatcher extends test.Matcher {
  CaptureValueMatcher();

  late Object value;

  @override
  bool matches(item, Map matchState) {
    value = item;
    return true;
  }

  @override
  test.Description describe(test.Description description) => description;
}
