void main() {
  String namaLengkap = "Elis Nurhidayati";
  String nim = "2241720035";

  // Fungsi untuk memeriksa apakah suatu bilangan adalah bilangan prima
  bool bilPrima(int angka) {
    if (angka <= 1) return false;
    for (int i = 2; i <= angka ~/ 2; i++) {
      if (angka % i == 0) return false;
    }
    return true;
  }

  // Daftar angka dari 0 hingga 201
  List<int> angka = List.generate(202, (index) => index);

  // Menggunakan forEach untuk iterasi melalui daftar angka
  angka.forEach((num) {
    if (bilPrima(num)) {
      print('Bilangan Prima: $num');
      print('Nama Lengkap: $namaLengkap');
      print('NIM: $nim');
      print('-------------------------------------------------');
    }
  });
}
