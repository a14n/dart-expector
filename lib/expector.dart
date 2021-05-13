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

/// A library to write tests in a fluent manner and more easily.
///
/// ```dart
/// test('my test', () {
///   expectThat(value).isNotEmpty;
/// });
/// ```
library expector;

export 'src/dart/async/future.dart';
export 'src/dart/core/bool.dart';
export 'src/dart/core/double.dart';
export 'src/dart/core/function.dart';
export 'src/dart/core/int.dart';
export 'src/dart/core/iterable.dart';
export 'src/dart/core/list.dart';
export 'src/dart/core/map.dart';
export 'src/dart/core/num.dart';
export 'src/dart/core/object.dart';
export 'src/dart/core/set.dart';
export 'src/dart/core/string.dart';
export 'src/expector_base.dart' hide CaptureValueMatcher;
