void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {'nama': 'Andi', 'nim': '2021001', 'jurusan': 'Informatika'},
    {'nama': 'Budi', 'nim': '2021002', 'jurusan': null},
    {'nama': null, 'nim': '2021003', 'jurusan': 'Teknik Komputer'},
  ];

  // 1. Blok jika data mahasiswa kosong
  if (mahasiswa.isEmpty) {
    print("Data mahasiswa kosong.");
    return;
  }

  // 2. Tampilkan Data Mahasiswa dengan forEach
  print("Menampilkan data dengan forEach:");
  mahasiswa.forEach((mhs) {
    print(
      "Nama: ${mhs['nama'] ?? 'Tidak ada data'}, NIM: ${mhs['nim'] ?? 'Tidak ada data'}, Jurusan: ${mhs['jurusan'] ?? 'Tidak ada data'}",
    );
  });

  // 2. Tampilkan Data Mahasiswa dengan For
  print("\nMenampilkan data dengan for:");
  for (var i = 0; i < mahasiswa.length; i++) {
    var mhs = mahasiswa[i];
    print(
      "Nama: ${mhs['nama'] ?? 'Tidak ada data'}, NIM: ${mhs['nim'] ?? 'Tidak ada data'}, Jurusan: ${mhs['jurusan'] ?? 'Tidak ada data'}",
    );
  }

  // 3. Validasi jika ada value yang bernilai null
  print("\nValidasi data yang bernilai null:");
  for (var i = 0; i < mahasiswa.length; i++) {
    var mhs = mahasiswa[i];
    if (mhs['nama'] == null || mhs['nim'] == null || mhs['jurusan'] == null) {
      print("Data mahasiswa ke-${i + 1} memiliki nilai null:");
      if (mhs['nama'] == null) print("  - Nama: Tidak ada data");
      if (mhs['nim'] == null) print("  - NIM: Tidak ada data");
      if (mhs['jurusan'] == null) print("  - Jurusan: Tidak ada data");
    }
  }
}
