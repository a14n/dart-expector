import 'package:expector/expector.dart';
import 'package:test/test.dart';

String? f() => 'hello';
String? g() => throw StateError('bad');

void main() {
  test('f() returns a 5-length string', () {
    expectThat(f()).isNotNull
      ..isNotEmpty
      ..hasLength(5);
  });
  test('g() throws a StateError', () async {
    (await expectThat(g).throws)
        .isA<StateError>()
        .satisfies((error) => error.message.contains('bad'));
  });
}
