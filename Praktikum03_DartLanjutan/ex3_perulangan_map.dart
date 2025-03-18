void main() {
  Map<String, int> umur = {'Andi': 25, 'Budi': 30, 'Citra': 28};
  umur.forEach((key, value) {
    print('$key berumur $value tahun');
  });
  print('\n');
  for (var entry in umur.entries) {
    print('${entry.key} berumur ${entry.value} tahun');
  }
  print('\n');
  for (var key in umur.keys) {
    print('$key berumur ${umur[key]} tahun');
  }
}
