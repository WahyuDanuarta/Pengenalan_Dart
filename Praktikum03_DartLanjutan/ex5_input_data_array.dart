import 'dart:io';

void main() {
  // Meminta input dari pengguna
  stdout.write("Masukkan Nama: ");
  String? nama = stdin.readLineSync();
  stdout.write("Masukkan NIM: ");
  String? nim = stdin.readLineSync();
  stdout.write("Masukkan Jurusan: ");
  String? jurusan = stdin.readLineSync();
  if (nama == '' || nim == '' || jurusan == '') {
    print('Data tidak lengkap, silahkan ulangi!');
    exit(1);
  }
  // Menyimpan input ke dalam Map
  Map<String, dynamic> mahasiswa = {
    'nama': nama,
    'nim': nim,
    'jurusan': jurusan,
  };
  if (mahasiswa.isEmpty) {
    print('Data mahasiswa tidak tersedia.');
    return;
  }
  print('\n');
  print(
    'Data Mahasiswa: Nama - ${mahasiswa['nama']}, NIM - ${mahasiswa['nim']}, Jurusan - ${mahasiswa['jurusan']}',
  );
  print('\nData Mahasiswa:');
  mahasiswa.forEach((key, value) {
    print('$key: $value');
  });
}
