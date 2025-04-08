import 'dart:io';

void main(List<String> args) {
  int a, b, c;
  try {
    stdout.write('Masukkan nilai a: ');
    a = int.parse(stdin.readLineSync()!);
    stdout.write('Masukkan nilai b: ');
    b = int.parse(stdin.readLineSync()!);
    c = a ~/ b;
    print('$a ~/ $b = $c');
  // ignore: unused_catch_stack
  } on FormatException catch (exception, stackTrace) {
    print('SALAH: nilai yang dimasukkan bukan bilangan.');
  // ignore: deprecated_member_use, unused_catch_stack
  } on IntegerDivisionByZeroException catch (exception, stackTrace) {
    print('SALAH: terjadi pembagian dengan nilai nol.');
  // ignore: unused_catch_stack
  } catch (exception, stackTrace) {
    print('SALAH: terjadi eksepsi bertipe $exception.');
  } finally {
    print('Selesai...');
  }
}
