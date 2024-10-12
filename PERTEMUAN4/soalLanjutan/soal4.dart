// Functions sebagai first-class object
// 1. Menyimpan fungsi dalam variabel
// void sapa() {
//   print('Halo!');
// }

// void main() {
//   var salam = sapa; // Menyimpan fungsi dalam variabel
//   salam(); // Memanggil fungsi melalui variabel
// }

// 2. Mengirim fungsi sebagai argumen ke fungsi lain
// void jalankanFungsi(Function callback) {
//   callback(); // Memanggil fungsi yang dikirim
// }
// // Fungsi untuk menyapa
// void sapa() {
//   print('Selamat Pagi!');
// }

// void main() {
//   jalankanFungsi(sapa); // Mengirim fungsi sebagai argumen
// }

// 3. Mengembalikan fungsi dari fungsi lain 
// Function buatPerkalian(num faktor) {
//   return (num angka) => angka * faktor; // Mengembalikan fungsi perkalian
// }

// void main() {
//   var kaliDua = buatPerkalian(2); // Fungsi untuk mengalikan angka dengan 2
//   print(kaliDua(5)); // Output: 10
// }

// 4. Menyimpan fungsi dalam struktur data (list, map, dll.)
// void sapa() {
//   print('Halo!');
// }
// // Fungsi untuk mengucapkan selamat tinggal
// void selamatTinggal() {
//   print('Selamat Tinggal!');
// }

// void main() {
//   var aksi = [sapa, selamatTinggal]; // Menyimpan fungsi dalam list
//   aksi.forEach((fungsi) => fungsi()); // Memanggil semua fungsi dalam list
// }

// 5. Closures
Function buatPenghitung() {
  int hitung = 0; // Variabel lingkup luar
  return () {
    hitung++;
    return hitung;
  }; // Mengembalikan fungsi yang "mengingat" variabel hitung
}

void main() {
  var tambah = buatPenghitung();
  print(tambah());
  print(tambah()); 
}