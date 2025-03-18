import 'dart:io';

void main() {
  stdout.write('Masukkan angka: ');
  int? angka = int.tryParse(stdin.readLineSync()!);
  print('Nilai yang anda inputkan adalah ${angka ?? '-'}');
  angka = angka ?? 0;
  print(angka >= 75 ? "Lulus" : (angka >= 60 ? "Remedial" : "Tidak Lulus"));
  String status;
  if (angka >= 75) {
    status = "Lulus";
  } else if (angka >= 60) {
    status = "Remedial";
  } else {
    status = "Tidak Lulus";
  }
  print('Anda ${status}');
  status = '';
  switch (angka ~/ 10) {
    case 10:
    case 9:
    case 8:
    case 7:
      status = "Lulus";
      break;
    case 6:
      status = "Remedial";
      break;
    default:
      status = "Tidak Lulus";
  }
  print("Nilai: $angka, Status: ${status}");
}
