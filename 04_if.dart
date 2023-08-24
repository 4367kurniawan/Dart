/*
//if-else
if (kondisi) {
  // Blok kode yang dieksekusi jika kondisi benar
} else {
  // Blok kode yang dieksekusi jika kondisi tidak terpenuhi
}

//else-if
if (kondisi1) {
  // Blok kode yang dieksekusi jika kondisi1 benar
} else if (kondisi2) {
  // Blok kode yang dieksekusi jika kondisi2 benar
} else {
  // Blok kode yang dieksekusi jika semua kondisi tidak terpenuhi
}

//ternary-operator
variabel = (condition) ? expressionIfTrue : expressionIfFalse;

//switch case statement
switch (ekspresi) {
  case nilai1:
    // Blok kode yang akan dijalankan jika ekspresi sama dengan nilai1
    break;
  case nilai2:
    // Blok kode yang akan dijalankan jika ekspresi sama dengan nilai2
    break;
  // ... Kasus lainnya
  default:
    // Blok kode yang akan dijalankan jika tidak ada kasus yang cocok
}


 */

import 'dart:io';

void main() {
  double? uts;
  double? uas;
  var lulus = 'selamat kamu lulus';
  var tidakLulus = 'maaf kamu tidak lulus';

  print('input nilai UTS');
  uts = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
  print('input nilai UAS');
  uas = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

//if-else
  if (uts < 10) {
    uts *= 10;
  } else {
    uts *= 1;
  }

//if-else ternary operator
  uas = (uas < 10) ? uas *= 10 : uas *= 1;

  double nilai = (uts + uas) / 2;
  print('nilai kelulusan >= 75, nilai akhir kamu adalah :$nilai');

//else-if
  if (uts < 60) {
    print('Nilai UTS : "tidak lulus"');
  } else if (uts < 70) {
    print('Nilai UTS : C');
  } else if (uts < 75) {
    print('Nilai UTS : B');
  } else {
    print('Nilai UTS : A');
  }
//else-if ternary operator
  String hasilUas = uas < 60
      ? 'Nilai UAS : "tidak lulus"'
      : uas < 70
          ? 'Nilai UAS : C'
          : uas < 75
              ? 'Nilai UAS : B'
              : 'Nilai UAS : A';
  print(hasilUas);

  if (nilai >= 75) {
    print(lulus);
  } else {
    print(tidakLulus);
  }

  print('------------------------------------------------------');

//switch case statement
  var generasi;

  print("Lahir di generasi apakah anda? silahkan input tanggal lahir :");
  int tahunKelahiran = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  switch (tahunKelahiran) {
    case 1997:
    case 1998:
    case 1999:
    case 2000:
    case 2001:
    case 2002:
    case 2003:
    case 2004:
    case 2005:
    case 2006:
    case 2007:
    case 2008:
    case 2009:
    case 2010:
    case 2011:
    case 2012:
      generasi = "Gen Z";
      break;
    case 1981:
    case 1982:
    case 1983:
    case 1984:
    case 1985:
    case 1986:
    case 1987:
    case 1988:
    case 1989:
    case 1990:
    case 1991:
    case 1992:
    case 1993:
    case 1994:
    case 1995:
    case 1996:
      generasi = "Milenial";
      break;
    case 1965:
    case 1966:
    case 1967:
    case 1968:
    case 1969:
    case 1970:
    case 1971:
    case 1972:
    case 1973:
    case 1974:
    case 1975:
    case 1976:
    case 1977:
    case 1978:
    case 1979:
    case 1980:
      generasi = "Gen X";
      break;
    default:
      generasi = "Generasi tidak teridentifikasi";
  }
  print('anda termasuk geneerasi $generasi');
}
