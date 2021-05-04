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

extension MapExpector<K, V> on Expector<Map<K, V>> {
  void get isEmpty {
    test_package.expect(value, test_package.isEmpty);
  }

  void get isNotEmpty {
    test_package.expect(value, test_package.isNotEmpty);
  }

  void hasLength(int length) {
    test_package.expect(value, test_package.hasLength(length));
  }

  void containsKey(K key) {
    test_package.expect(value, test_package.contains(key));
  }
}