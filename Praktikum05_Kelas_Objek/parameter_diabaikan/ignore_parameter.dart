// ignore_for_file: unnecessary_null_comparison

class Mahasiswa {
  String ? name;
  Function(String name) ? doingHobby;
  Mahasiswa(this.name, {this.doingHobby});
  void takeARest() {
    if (doingHobby != null) {
      doingHobby!(name!);
    }
  }
}
