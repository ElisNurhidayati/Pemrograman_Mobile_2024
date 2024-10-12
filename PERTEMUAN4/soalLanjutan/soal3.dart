// JENIS-JENIS PARAMETER
// 1. Positional Parameters 
// void salam(String nama, int umur) {
//   print("Halo $nama, kamu berusia $umur tahun.");
// }

// void main() {
//   salam("Elis", 20);
// }

// 2. Optional Positional Parameters
// void salam(String nama, [int? umur]) {
//   if (umur != null) {
//     print("Halo $nama, kamu berusia $umur tahun.");
//   } else {
//     print("Halo $nama.");
//   }
// }

// void main() {
//   salam("Elis"); // Pemanggilan fungsi tanpa parameter opsional
//   salam("Elis", 20); // Pemanggilan fungsi dengan parameter opsional
// }

// 3. Named Parameters
// void salam({required String nama, int umur = 25}) {
//   print("Halo $nama, kamu berusia $umur tahun.");
// }

// void main() {
//   salam(nama: "Elis", umur: 20); // Pemanggilan fungsi dengan named parameters
//   salam(nama: "Elis"); // Pemanggilan fungsi tanpa memberikan umur (menggunakan nilai default)
// }

// 4. Optional Named Parameters
// void salam({String? nama, int? umur}) {
//   print("Halo $nama, kamu berusia $umur tahun.");
// }

// void main() {
//   salam(); // Tidak memberikan parameter apa pun
//   salam(nama: "Elis", umur: 20); // Mengisi parameter berdasarkan nama
// }

// 5. Parameter dengan Nilai Default
// void salam(String nama, {int umur = 21}) {
//   print("Halo $nama, kamu berusia $umur tahun.");
// }

// void main() {
//   salam("Elis"); // umur menggunakan nilai default 18
//   salam("Elis", umur: 20); // umur menggunakan nilai yang diberikan
// }

// 6. Parameter Fungsi
void hitung(int a, int b, Function operasi) {
  print(operasi(a, b));
}

void main() {
  hitung(10, 5, (x, y) => x + y); // Mengoper fungsi sebagai parameter
  hitung(10, 5, (x, y) => x - y); // Mengoper fungsi lain
}