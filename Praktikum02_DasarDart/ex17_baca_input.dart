//membaca data dari input keyboard
import 'dart:io';

void main(List<String> args) {
  int a;
  double b;
  String c;
  stdout.write('Masukkan bilangan bulat: ');
  a = int.parse(stdin.readLineSync() ?? '0');
  stdout.write('Masukkan bilangan riil: ');
  b = double.parse(stdin.readLineSync() ?? '0');
  stdout.write('Masukkan teks: ');
  c = stdin.readLineSync() ?? '';
  print('\n$a bertipe ${a.runtimeType.toString()}');
  print('$b bertipe ${b.runtimeType.toString()}');
  print('\'$c\' bertipe ${c.runtimeType.toString()}');
}
