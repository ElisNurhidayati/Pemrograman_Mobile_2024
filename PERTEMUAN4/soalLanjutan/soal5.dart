// ANONYMOUS FUNCTIONS
void main() {
  // Fungsi anonim sederhana dengan satu baris return
  var penjumlahan = (int a, int b) => a + b;
  print(penjumlahan(3, 4)); // Output: 7
  
  // Fungsi anonim dalam list.forEach
  var angka = [1, 2, 3];
  angka.forEach((item) {
    print('Angka: $item'); // Fungsi anonim untuk setiap elemen list
  });
}