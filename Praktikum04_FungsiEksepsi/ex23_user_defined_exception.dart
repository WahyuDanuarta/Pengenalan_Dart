import 'dart:io';

class NegativeError implements Exception {
  final String message;
  NegativeError([this.message = "Angka tidak boleh negatif"]);

  @override
  String toString() => "NegativeError: $message";
}

void main(List<String> args) {
  int a;
  try {
    stdout.write('Masukkan bilangan non-negatif: ');
    a = int.parse(stdin.readLineSync()!);
    if (a < 0) {
      throw NegativeError();
    }
    print('Anda memasukkan nilai $a.');
  // ignore: unused_catch_stack
  } on FormatException catch (exception, stackTrace) {
    print('SALAH: nilai yang dimasukkan bukan bilangan.');
  // ignore: unused_catch_stack
  } on NegativeError catch (exception, stackTrace) {
    print('SALAH: anda memasukkan nilai negatif.');
  // ignore: unused_catch_stack
  } catch (exception, stackTrace) {
    print('SALAH: terjadi eksepsi bertipe $exception.');
  }
}
