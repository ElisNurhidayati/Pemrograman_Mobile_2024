// LANGKAH 3 
(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
void main() {
  // LANGKAH 1
  var record = ('first', a: 2, b: true, 'last');
    print(record);
  // PEMANGGILAN LANGKAH 3
  var nilai = (1, 2);
    print(tukar(nilai));
  // LANGKAH 4
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Elis Nurhidayati', 2241720035); // Menambah inisialisasi 
    print(mahasiswa);
  // LANGKAH 5 
  var mahasiswa2 = ('Elis Nurhidayati', a: 2241720035, b: true, 'last');
    print(mahasiswa2.$1); // Prints Nama
    print(mahasiswa2.a); // Prints NIM
    print(mahasiswa2.b); // Prints true
    print(mahasiswa2.$2); // Prints 'last'
}

