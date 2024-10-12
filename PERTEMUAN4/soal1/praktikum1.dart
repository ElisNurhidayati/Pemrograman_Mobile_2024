// LANGKAH 1
// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// // LANGKAH 3
// void main() {
//   // Deklarasi list variabel final dan default value = null
//   final list = List.filled(5, null);

//   // Nama dan NIM saya
//   list[1] = "Elis Nurhidayati";
//   list[2] = "2241720035";

//   // Print elemen
//   print("Nama: ${list[1]}");
//   print("NIM: ${list[2]}");

//   // Print keseluruhan list untuk melihat hasil
//   print(list);
// }

// PERBAIKAN LANGKAH 3
void main() {
  // Mengubah deklarasi menjadi List<String?> dan default value = null
  final List<String?> list = List.filled (5, null);

  // Nama dan NIM saya
  list[1] = "Elis Nurhidayati";
  list[2] = "2241720035";

  // Print elemen
  print("Nama: ${list[1]}");
  print("NIM: ${list[2]}");

  // Print keseluruhan list untuk melihat hasil
  print(list);
}