import 'package:expector/expector.dart';
import 'package:test/test.dart';

String? f() => 'hello';

void main() {
  test('f() returns a 5-length string', () {
    expectThat(f()).isNotNull
      ..isNotEmpty
      ..hasLength(5);
  });
}
