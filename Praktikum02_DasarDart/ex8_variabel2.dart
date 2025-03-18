//nilai default variabel
// ignore_for_file: unnecessary_null_comparison, unnecessary_type_check

void main(List<String> args) {
  int? x;
  print(x == null);
  print(x);
  x = 1;
  print(x == null);
  print(x is int);
  print(x);
}
