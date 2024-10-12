// Return Multiple Value di Functions
// A. Menggunakan List
// List<int> hitung(int a, int b) {
//   int penjumlahan = a + b;
//   int perkalian = a * b;
//   return [penjumlahan, perkalian]; // Mengembalikan list
// }

// void main() {
//   var hasil = hitung(3, 4);
//   print('Penjumlahan: ${hasil[0]}, Perkalian: ${hasil[1]}');
// }

// B. Menggunakan Map
Map<String, int> hitung(int a, int b) {
  return {
    'penjumlahan': a + b,
    'perkalian': a * b
  };
}

void main() {
  var hasil = hitung(3, 4);
  print('Penjumlahan: ${hasil['penjumlahan']}, Perkalian: ${hasil['perkalian']}');
}