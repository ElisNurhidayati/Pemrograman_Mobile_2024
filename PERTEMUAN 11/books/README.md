# Pertemuan 11: Pemrograman Asynchronous

**Nama : Elis Nurhidayati**
**NIM : 2241720035**
**Kelas : TI-3C**

---
# Daftar Isi
- [Tujuan Praktikum](#tujuan-praktikum)
- [Praktikum 1: Mengunduh Data dari Web Service (API)](#praktikum-1-mengunduh-data-dari-web-service-api)
- [Praktikum 2: Menggunakan await/async untuk menghindari callbacks](#praktikum-2-menggunakan-awaitasync-untuk-menghindari-callbacks)
- [Praktikum 3: Menggunakan Completer di Futurecallbacks](#praktikum-3-menggunakan-completer-di-futurecallbacks)

## Tujuan Praktikum
Setelah menyelesaikan codelab ini Anda akan mampu untuk:
- Menggunakan Future
- Menggunakan async/await untuk menghapus callbacks
- Memanggil Future secara paralel
- Mengatasi error pada kode asynchronous
- Menggunakan Future dengan StatefulWidget
- Menggunakan FutureBuilder untuk mengelola Future
- Mengubah navigasi route menjadi fungsi asynchronous
- Mengambil hasil dari widget dialog

## Praktikum 1: Mengunduh Data dari Web Service (API)
### Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama books di folder src week-12 repository GitHub Anda.

Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.

![langkah 1](/assets/P1/1.png)

### Langkah 2: Cek file pubspec.yaml
Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.

![langkah 2](/assets/P1/2.png)

### Langkah 3: Buka file main.dart
Ketiklah kode seperti berikut ini.

**Soal 1**
Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.

![langkah 3](/assets/P1/3.png)

### Langkah 4: Tambah method getData()
Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.

![langkah 4](/assets/P1/4.png)

**Soal 2**
Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.

![ganti id](/assets/P1/soal2a.png)

Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".

![run](/assets/P1/soal2b.png)

### Langkah 5: Tambah kode di ElevatedButton
Tambahkan kode pada onPressed di ElevatedButton seperti berikut.

![Langkah 5](/assets/P1/5.png)

Lakukan run aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.

**Soal 3**
- Jelaskan maksud kode langkah 5 tersebut terkait `substring` dan `catchError`!
**Penjelasan:** 
    - Substring: Digunakan untuk mengambil bagian dari String berdasarkan indeks. Misalnya, "Flutter".substring(1, 4) menghasilkan "lut".

    - catchError: Digunakan untuk menangani error pada operasi asynchronous (Future), sehingga aplikasi tidak crash dan error dapat ditangani dengan baik.
    
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".

![run](/assets/P1/soal3.gif)

---
## Praktikum 2: Menggunakan await/async untuk menghindari callbacks
Ada alternatif penggunaan Future yang lebih clean, mudah dibaca dan dirawat, yaitu pola async/await. Intinya pada dua kata kunci ini:
- `async` digunakan untuk menandai suatu method sebagai asynchronous dan itu harus ditambahkan di depan kode function.
- `await` digunakan untuk memerintahkan menunggu sampai eksekusi suatu function itu selesai dan mengembalikan sebuah `value`. Untuk `then` bisa digunakan pada jenis method apapun, sedangkan `await` hanya bekerja di dalam method `async`.

### Langkah 1: Buka file main.dart
Tambahkan tiga method berisi kode seperti berikut di dalam `class _FuturePageState`.

![Langkah 1](/assets/P2/1.png)

### Langkah 2: Tambah method count()
Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.

![Langkah 2](/assets/P2/2.png)

### Langkah 3: Panggil count()
Lakukan comment kode sebelumnya, ubah isi kode onPressed() menjadi seperti berikut.

![Langkah 3](/assets/P2/3.png)

### Langkah 4: Run
Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.

**Soal 4**
- Jelaskan maksud kode langkah 1 dan 2 tersebut!
**Penjelasan:**
- Langkah 1: Metode returnOneAsync, returnTwoAsync, dan returnThreeAsync adalah fungsi asynchronous yang masing-masing menunggu 3 detik dan mengembalikan nilai integer (1, 2, dan 3).

- Langkah 2: Fungsi count() memanggil ketiga metode di atas secara berurutan, menjumlahkan hasilnya (1 + 2 + 3 = 6), dan menyimpan totalnya di variabel result. Total ini kemudian diperbarui di antarmuka pengguna melalui setState.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".

![Langkah 4](/assets/P2/4.gif)

---
## Praktikum 3: Menggunakan Completer di Futurecallbacks
Menggunakan Future dengan `then`, `catchError`, `async`, dan `await` mungkin sudah cukup untuk banyak kasus, tetapi ada alternatif melakukan operasi async di Dart dan Flutter yaitu dengan `class Completer`.

**Completer** membuat object Future yang mana Anda dapat menyelesaikannya nanti (late) dengan return sebuah value atau error.

### Langkah 1: Buka main.dart
Pastikan telah impor package async berikut.

![Langkah 1](/assets/P3/1.png)

### Langkah 2: Tambahkan variabel dan method
Tambahkan variabel late dan method di class _FuturePageState seperti ini..

![Langkah 2](/assets/P3/2.png)

### Langkah 3: Ganti isi kode onPressed()
Tambahkan kode berikut pada fungsi onPressed(). Kode sebelumnya bisa Anda comment.

![Langkah 3](/assets/P3/3.png)

### Langkah 4: Run
Terakhir, run atau tekan F5 untuk melihat hasilnya jika memang belum running. Bisa juga lakukan hot restart jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.

**Soal 5**
- Jelaskan maksud kode langkah 2 tersebut!
**Penjelasan:**

  Variabel `Completer` bertipe Completer<int> dideklarasikan untuk membuat Future yang dapat diselesaikan (di-complate) secara manual. Method `getNumber()` menginisialisasi Completer, memanggil fungsi calculate(), dan mengembalikan completer.future, yang akan selesai ketika calculate() memanggil completer.complate. Method `calculate()` menunggu eksekusi selama 5 detik, lalu memanggil completer.complete(42) untuk menyelesaikan Future dengan hasil nilai 42 dari getNumber().

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5".

![Langkah 3](/assets/P3/4.gif)