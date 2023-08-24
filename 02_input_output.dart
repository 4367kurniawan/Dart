import 'dart:io';

void main() {
  //deklarasi variabel
  String? name;
  int? age;
  double? height;

  //perintah input
  print('Input Personal Data');
  print('===================');

  //input name
  print('Input Name :');
  name = stdin.readLineSync();

  //input age
  print('Input Age :');
  age = int.tryParse(stdin.readLineSync() ?? '');

  //input height
  print('Input Age :');
  height = double.tryParse(stdin.readLineSync() ?? '');

  //mencetak hasil dari input
  print('Name : $name');
  print('Age : $age');
  print('Height : $height');
}
