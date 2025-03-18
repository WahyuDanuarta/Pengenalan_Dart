import 'dart:io';

void main() {
  stdout.write("Masukkan Nama Anda : ");
  String nama = stdin.readLineSync()!;

  stdout.write("Masukkan Umur Anda : ");
  int umur = int.parse(stdin.readLineSync()!);

  stdout.write("Masukkan Tanggal Lahir Anda : ");
  String Tanggal_Lahir = stdin.readLineSync()!;

  stdout.write("Masukkan Asal Sekolah Anda : ");
  String Asal_Sekolah = stdin.readLineSync()!;

  print("\n=== Data Pribadi ===");
  print("Nama: $nama");
  print("Umur: $umur tahun");
  print("Tanggal Lahir: $Tanggal_Lahir");
  print("Asal Sekolah: $Asal_Sekolah");
}