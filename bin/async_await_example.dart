void main(List<String> arguments) async {
  var p = Person();
  print('job 1');
  print('job 2');
  // p.getData();
  await p.getDataAsync();
  print('job 3 : ' + p.nama);
  print('job 4');
}

class Person {
  String nama = 'Kosong';

  void getData() {
    nama = 'Ardhika';
    print('get data done $nama');
  }

  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));
    nama = 'Ardhika Rafi';
    print('get data done $nama');
  }
}
