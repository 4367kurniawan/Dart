void main() {
  //berikut ini adalah tipe data yang sering digunakan di dart
  String nama = 'Kurniawan';
  int umur = 25;
  double tinggi = 172.5;
  bool pria = true;

  //mencetak variabel nama => String
  print(nama);
  //mencetak variabel umur => int
  print(umur);
  //mencetak variabel tinggi => double
  print(tinggi);
  print('===================================');

  //atau juga bisa menggunakan var, kelebihannya bisa menyesuaikan tipe data tanpa harus deklarasi tipe data
  var name = 'Mr Kurniawan';
  var age = 25;
  var height = 172.5;

  //contoh mencetak variabel dengan menambahkan keterangan
  print('Nama : $name');
  print('Age : $age');
  print('Height : $height');
  print('Apakah $name pria? : $pria');
}
