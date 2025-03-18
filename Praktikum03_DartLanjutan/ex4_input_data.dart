import 'dart:io';

void main() {
  int? umur;
  while (umur == null || umur <= 0) {
    stdout.write('Masukkan umur Anda: ');
    String? inputUmur = stdin.readLineSync();
    umur = int.tryParse(inputUmur ?? '');
    if (umur == null || umur <= 0) {
      print('Input tidak valid, coba lagi.');
    }
  }
  print('Umur Anda: $umur tahun \n');
}
