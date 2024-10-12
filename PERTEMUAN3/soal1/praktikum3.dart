void main() {
  // Langkah 1
  /* Mendeklarasi variabel dengan tipe data int
     Mengubah nama variabel menjadi index (huruf kecil)
     Menambah operasi increment */
  for (int index = 10; index < 27; index++) {
    // Langkah 3
    if (index == 21) {
      break; // Keluar dari loop jika index sama dengan 21
    } 
    else if (index > 1 && index < 7) { // Mengubah operasi &&
      continue; // Lewati iterasi jika index lebih dari 1 dan kurang dari 7
    }
    print(index); // Detak nilai index jika kondisi di atas tidak terpenuhi
  }
}
