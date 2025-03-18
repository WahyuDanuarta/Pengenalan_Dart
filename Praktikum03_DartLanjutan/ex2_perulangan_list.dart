void main() {
  List<String> nama = ["Ali", "Budi", "Citra", "Dewi"];
  for (int i = 0; i < nama.length; i++) {
    if (nama[i] == "Budi") continue;
    print(nama[i]);
  }
  print('\n');
  nama.forEach((nm) {
    print(nm);
  });
  print('\n');
  int i = 0;
  while (i < 2) {
    print(nama[i]);
    i++;
  }
  print('\n');
  i = 0;
  do {
    print(nama[i]);
    i++;
  } while (i <= 2);
  print('\n');
}
