// Importing dart:io file
// ignore_for_file: avoid_print

import 'dart:io';
import 'dart:math';

void main() {
  // Membuat array 2 dimensi dengan jumlah baris 4
  List<List<int>> array2D = List.generate(4, (index) => []);

  // Mengisi masing-masing baris dengan perulangan sesuai dengan ketentuan
  array2D[0] = List.generate(4, (index) => 6 * (index + 1));
  array2D[1] = List.generate(5, (index) => 2 * index + 3);
  array2D[2] = List.generate(6, ((index) => (pow(index + 4, 3).toInt())));
  array2D[3] = List.generate(7, (index) => 3 + 7 * index);

  // Output isi array 2 dimensi
  print("Isi List:");
  for (var row in array2D) {
    print(row.join(' '));
  }
  print("");

// Fungsi untuk mencari FPB dari dua bilangan
  int findFPB(int? a, int? b) {
    while (b != 0) {
      var t = b;
      b = (a! % b!);
      a = t;
    }
    return a!;
  }

  // Memanggil fungsi untuk mencari FPB
  // Menerima input dari terminal untuk bilangan 1 dan bilangan 2
  stdout.write("\nMasukkan Bilangan 1: ");
  int? bilangan1;
  try {
    bilangan1 = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Input Bilangan 1 tidak valid");
  }

  stdout.write("Masukkan Bilangan 2: ");
  int? bilangan2;
  try {
    bilangan2 = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print("Input Bilangan 2 tidak valid");
  }

  // Memanggil fungsi untuk mencari FPB
  print("\nBilangan 1: $bilangan1");
  print("Bilangan 2: $bilangan2");
  print("FPB $bilangan1 dan $bilangan2 = ${findFPB(bilangan1, bilangan2)}");
}
