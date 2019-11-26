import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  test('Test Case for Permuate', () {
    expect(permuate([3]), [[3]]);
    expect(permuate([1,2,3]), [[1,2,3],
[1,3,2],
[2,1,3],
[2,3,1],
[3,1,2],
[3,2,1]]);
  });
}
