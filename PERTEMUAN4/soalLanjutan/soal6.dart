// Perbedaan Lexical Scope dan Lexical Closures
// Lexical Scope
// void main() {
//   int x = 10; // Variabel di lingkup utama (global)
//   void cetakX() {
//     // Variabel x dapat diakses di sini karena berada dalam lingkup luar
//     print(x); 
//   }
//   cetakX();
// }

// Lexical Closures
Function buatPenghitung() {
  int hitungan = 0; // Variabel di lingkup luar (fungsi buatPenghitung)
  return () { // Fungsi anonim yang mengakses variabel dari lingkup luar
    hitungan++;
    return hitungan;
  };
}

void main() {
  var tambah = buatPenghitung(); // Closure terjadi di sini
  print(tambah());
  print(tambah());
}