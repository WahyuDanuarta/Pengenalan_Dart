import 'dart:io';

void main() {
  // Tetapkan username dan password
  final String correctUsername = 'admin';
  final String correctPassword = '1234';

  int attempts = 0; // Menghitung jumlah percobaan login
  bool isLoggedIn = false; // Status login

  while (attempts < 3 && !isLoggedIn) {
    // Input username
    stdout.write("Masukkan username: ");
    String? username = stdin.readLineSync()?.trim();

    // Input password
    stdout.write("Masukkan password: ");
    String? password = stdin.readLineSync()?.trim();

    // Validasi input tidak boleh kosong atau hanya spasi
    if (username == null ||
        username.isEmpty ||
        password == null ||
        password.isEmpty) {
      print("Username dan password tidak boleh kosong. Silakan coba lagi.\n");
      continue;
    }

    // Cek kecocokan username dan password
    if (username == correctUsername && password == correctPassword) {
      isLoggedIn = true;
      print("Login berhasil!");
    } else {
      attempts++;
      print("Username atau password salah. Percobaan ke-$attempts dari 3.\n");
    }
  }

  // Jika percobaan habis dan belum login
  if (!isLoggedIn) {
    print("Kesempatan habis. Login gagal!");
  }
}
