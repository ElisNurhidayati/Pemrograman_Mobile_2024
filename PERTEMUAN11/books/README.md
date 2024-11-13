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
- [Praktikum 4: Memanggil Future secara paralel](#praktikum-4-memanggil-future-secara-paralel)
- [Praktikum 5: Menangani Respon Error pada Async Code](#praktikum-5-menangani-respon-error-pada-async-code)
- [Praktikum]()
- [Praktikum]()
- [Praktikum]()
- [Praktikum]()

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
  - Langkah 2: Fungsi count() memanggil ketiga metode di atas secara berurutan, menjumlahkan hasilnya (1 + 2 + 3 = 6), dan menyimpan totalnya di variabel result. Total ini kemudian diperbarui di antarmuka pengguna.

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

### Langkah 5: Ganti method calculate()
Gantilah isi code method calculate() seperti kode berikut, atau Anda dapat membuat calculate2()

![Langkah 5](/assets/P3/5.png)

### Langkah 6: Pindah ke onPressed()

![Langkah 6](/assets/P3/6.png)

**Soal 6**
- Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
**Penjelasan:**
  - Penanganan Error: Langkah 5 menambahkan try-catch dalam calculate2() untuk menangani error, yang menyelesaikan Future dengan completer.completeError({}) jika ada kegagalan.
  - Penanganan Hasil di onPressed: Langkah 6 menambahkan catchError pada getNumber() untuk mengubah result menjadi pesan error jika terjadi kesalahan.
  - Fleksibilitas: Langkah 5 memberi opsi penggunaan calculate2() yang lebih aman karena menangani error.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".

![Soal 6](/assets/P3/soal6.gif)

---
## Praktikum 4: Memanggil Future secara paralel
Ketika Anda membutuhkan untuk menjalankan banyak Future secara bersamaan, ada sebuah class yang dapat Anda gunakan yaitu: FutureGroup.

**FutureGroup** adalah sekumpulan dari Future yang dapat run secara paralel. Ketika run secara paralel, maka konsumsi waktu menjadi lebih hemat (cepat) dibanding run method async secara single setelah itu method async lainnya.

Ketika semua code async paralel selesai dieksekusi, maka FutureGroup akan return value sebagai sebuah List, sama juga ketika ingin menambahkan operasi paralel dalam bentuk List.

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![Langkah 1](/assets/P4/1.png)

### Langkah 2: Edit onPressed()
Tambahkan variabel late dan method di class _FuturePageState seperti ini..

![Langkah 2](/assets/P4/2.png)

### Langkah 3: Run
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

![Langkah 3](/assets/P4/3.png)

### Langkah 4: Ganti variabel futureGroup
Menggunakan FutureGroup dengan `Future.wait`

**Soal 8**
Jelaskan maksud perbedaan kode langkah 1 dan 4!

**Penjelasan:** 


---
## Praktikum 5: Menangani Respon Error pada Async Code
Ada beberapa teknik untuk melakukan handle error pada code async. Pada praktikum ini Anda akan menggunakan 2 cara, yaitu then() callback dan pola async/await.

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![Langkah 1](/assets/P5/1.png)

### Langkah 2: ElevatedButton

![Langkah 2](/assets/P5/2.png)

### Langkah 3: Run
Pada bagian debug console akan melihat teks Complete seperti berikut.

![Langkah 3](/assets/P5/3.png)

**Soal 9**
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 9".

![Langkah 3](/assets/P5)

### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage

![Langkah 3](/assets/P5/4.png)

**Soal 10**
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

![Langkah 3](/assets/P5)

**Penjelasan:**

---
## Praktikum 6: Menggunakan Future dengan StatefulWidget
Seperti yang Anda telah pelajari, Stateless widget tidak dapat menyimpan informasi (state), StatefulWidget dapat mengelola variabel dan properti dengan method setState(), yang kemudian dapat ditampilkan pada UI. State adalah informasi yang dapat berubah selama life cycle widget itu berlangsung.

Ada 4 method utama dalam life cycle StatefullWidget:
- initState(): dipanggil sekali ketika state dibangun. Bisa dikatakan ini juga sebagai konstruktor class.
- build(): dipanggil setiap kali ada perubahan state atau UI. Method ini melakukan destroy UI dan membangun ulang dari nol.
- deactive() dan dispose(): digunakan untuk menghapus widget dari tree, pada beberapa kasus dimanfaatkan untuk menutup koneksi ke database atau menyimpan data sebelum berpindah screen.

### Langkah 1: install plugin geolocator
Tambahkan plugin geolocator dengan mengetik perintah berikut di terminal.
`flutter pub add geolocator`

![Langkah 1](/assets/P6/1.png)

### Langkah 2: Tambah permission GPS
- Jika Anda menargetkan untuk platform Android, maka tambahkan baris kode berikut di file `android/app/src/main/androidmanifest.xml`
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>

- Jika Anda menargetkan untuk platform iOS, maka tambahkan kode ini ke file Info.plist
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs to access your location</string>

![Langkah 2](/assets/P6/2.png)

### Langkah 3: Buat file geolocation.dart
Tambahkan file baru ini di folder lib project Anda.

![Langkah 3](/assets/P6/3.png)

### Langkah 4: Buat StatefulWidget
Buat class LocationScreen di dalam file geolocation.dart

![Langkah 4](/assets/P6/4.png)

### Langkah 5: Isi kode geolocation.dart

![Langkah 5](/assets/P6/5.png)

**Soal 11**
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

### Langkah 6: Edit main.dart
Panggil screen baru tersebut di file main Anda seperti berikut.
`home: LocationScreen(),`

![Langkah 6](/assets/P6/6.png)

### Langkah 7: Run

![Langkah 7](/assets/P6/7.png)

### Langkah 8: Tambahkan widget animasi loading

![Langkah 8](/assets/P6/8.png)

**Soal 12**
- Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));
- Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 12".

