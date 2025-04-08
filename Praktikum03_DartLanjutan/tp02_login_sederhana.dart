import 'dart:io';

void main() {
  // 1. Tetapkan username dan password
  final String correctUsername = 'admin';
  final String correctPassword = '1234';

  int attempts = 0; // Menghitung jumlah percobaan login
  bool isLoggedIn = false; // Status login

  // 2. Loop untuk proses login dengan batas 3 percobaan
  while (attempts < 3 && !isLoggedIn) {
    // 3. Input username
    stdout.write("Masukkan username: ");
    String? username = stdin.readLineSync()?.trim();

    // 3. Input password
    stdout.write("Masukkan password: ");
    String? password = stdin.readLineSync()?.trim();

    // 4. Validasi input tidak boleh kosong atau hanya spasi
    if (username == null ||
        username.isEmpty ||
        password == null ||
        password.isEmpty) {
      print("Username dan password tidak boleh kosong. Silakan coba lagi.\n");
      continue;
    }

    // 5. Cek kecocokan username dan password
    if (username == correctUsername && password == correctPassword) {
      isLoggedIn = true;
      print("Login berhasil!");
    } else {
      attempts++;
      print("Username atau password salah. Percobaan ke-$attempts dari 3.\n");
    }
  }

  // 6. Jika percobaan habis dan belum login
  if (!isLoggedIn) {
    print("Kesempatan habis. Login gagal!");
  }
}
