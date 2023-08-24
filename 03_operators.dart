/*

//OPERATOR ARITMATIKA
+ : penjumlahan
- : pengurangan
* : perkalian
/ : pembagian
% : modulus (sisa bagi)

//OPERATOR PEMBANDING (PERBANDINGAN)
== : sama dengan
!= : tidak sama dengan
< : lebih kecil
> : lebih besar
<= : lebih kecil dari atau sama dengan
>= : lebih besar dari atau sama dengan

//OPERATOR LOGIKA
&& : AND (dan)
|| : OR (atau)
! : NOT (tidak)

//OPERATOR ASSIGNMENT
= : assignment pemberian nilai
+= : assignment dengan penambahan
-= : assignment dengan pengurangan
*= : assignment dengan perkalian
/= : assignment dengan pembagian
%= : assignment dengan modulus

//OPERATOR INCREMENT DAN DECREMENT
++ : increment (penambahan 1)
-- : decrement (pengurangan 1)

//OPERATOR TERNARY
condition : jika kondisi benar, jika salah makan akan lanjut ke expression1
expression1 : jika salah, maka akan lanjut ke expression2
condition ? expression1 : expression2

//OPERATOR BITWISE
& : AND bitwise
| : OR bitwise
^ : XOR bitwise
~ : NOT bitwise
<< : left shift
>> : right shift

//OPERATOR NULL AWARE
? : memeriksa apakah objek null sebelum mengakses anggota objek
?? : mengembalikan nilai default jika object null

//OPERATOR TYPE TEST
as : mengkonversi tipe data (casting)
is : memeriksa apakah objek adalah instance dari suatu tipe data
is! : memeriksa apakah objek bukan instance dari suatu tipe data

 */

import 'dart:io';

void main() {
  //deklarasi variabel/object input
  bool? objectA;
  bool? objectB;
  var variabel1;
  var variabel2;

  //OPERATOR ARITMATIKA
  print('Menghitung Penjumlahan');
  print('Input Variabel 1 :');
  variabel1 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print('Input Variabel 2 :');
  variabel2 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  num menghitungOperatorAritmatika =
      variabel1 + variabel2; //bisa diganti dengan operator (-), (*), (/), (%)
  print('hasil penjumlahan adalah : $menghitungOperatorAritmatika');

  print('------------------------------------------------------');

  //OPERATOR PEMBANDING (PERBANDINGAN)
  print('Operator Pembanding (Perbandingan)');
  print('Input Variabel 1 :');
  variabel1 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print('Input Variabel 2 :');
  variabel2 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print(variabel1 ==
      variabel2); //bisa diganti dengan operator pembanding (==), (!=), (<), (>), (<=), (>=)

  print('------------------------------------------------------');

  //OPERATOR LOGIKA
  print('Operator Logika && dengan Variabel');
  print('Input Variabel 1 (true/false):');
  objectA = bool.tryParse(stdin.readLineSync() ?? '');
  print('Input Variabel 2 (true/false):');
  objectB = bool.tryParse(stdin.readLineSync() ?? '');
  if (objectA == null || objectB == null) {
    print('Input tidak valid.');
  } else {
    bool hasilLogika =
        objectA && objectB; //bisa diganti dengan operator logika (||). (!)
    print('Hasil objectA && objectB: $hasilLogika');
  }

  print('------------------------------------------------------');

  //OPERATOR ASSIGNMENT
  print('Operator Assignment');
  print('Input Variabel 1 :');
  variabel1 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  variabel1 +=
      0; //bisa diganti dengan operator assignment (-=), (*=), (/=), (%=)
  print(variabel1);

  print('------------------------------------------------------');

  //OPERATOR INCREMENT DAN DECREMENT
  print('Operator Increment dan Decrement');
  print('Input Variabel 1 Increment :');
  variabel1 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print('Input Variabel 2 Decrement :');
  variabel2 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  variabel1++;
  variabel2--;
  print('hasil increment dari variabel 1 adalah : $variabel1');
  print('hasil increment dari variabel 2 adalah : $variabel2');

  print('------------------------------------------------------');

  //OPERATOR TERNARY
  print('Operator Ternary, IPK lebih dari 3.5 adalah cumlaude');
  print('Input IPK :');
  variabel1 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  var ipk = variabel1 > 3.5
      ? 'cumlaude'
      : 'baik'; //jika variabel1 lebih dari 3.5 maka cumlaude, dibawah 3.5 predikat baik
  print('kamu lulus dengan predikat : $ipk');

  print('------------------------------------------------------');

  //OPERATOR BITWISE
  print('Operator Bitwise');
  print('Input Variabel :');
  variabel1 = num.tryParse(stdin.readLineSync() ?? '') ?? 0;
  var operatorBitwise = variabel1 &
      3; //bisa diganti dengan operator bitwise (&), (|), (^), (~), (<<), (>>)
  print('variabel Bitwise (& AND) dengan value 3 adalah : $operatorBitwise');

  print('------------------------------------------------------');

//OPERATOR NULL AWARE
  print('Operator Null Aware');
  print('Input Variabel int :');
  variabel1 = num.tryParse(stdin.readLineSync() ?? '') ??
      'tidak boleh kosong'; //operator null aware ?? apabila nilai variabel null => 'tidak boleh kosong'
  print('hasil dari input adalah : $variabel1');

  print('------------------------------------------------------');
}
