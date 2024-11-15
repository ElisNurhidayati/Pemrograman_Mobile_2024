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
- [Praktikum 6: Menggunakan Future dengan StatefulWidget](#praktikum-6-menggunakan-future-dengan-statefulwidget)
- [Praktikum 7: Manajemen Future dengan FutureBuilder](#praktikum-7-manajemen-future-dengan-futurebuilder)
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

![Langkah 2](/assets/P4/3.png)

### Langkah 3: Run
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

**Soal 7**
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 7"

![Langkah 3](/assets/P4/3.gif)

### Langkah 4: Ganti variabel futureGroup
Menggunakan FutureGroup dengan `Future.wait`

![Langkah 3](/assets/P4/4.png)

**Soal 8**
Jelaskan maksud perbedaan kode langkah 1 dan 4!

**Penjelasan:** 
Langkah 1 lebih lengkap karena memanfaatkan `FutureGroup` untuk mengumpulkan nilai yang dihasilkan oleh setiap `Future`, menghitung total, dan memperbarui tampilan dengan nilai tersebut. Sedangkan, langkah 4 hanya mengumpulkan `Future` dengan `Future.wait` tanpa langkah tambahan untuk memproses hasil dari proses asinkron tersebut.

---
## Praktikum 5: Menangani Respon Error pada Async Code
Ada beberapa teknik untuk melakukan handle error pada code async. Pada praktikum ini Anda akan menggunakan 2 cara, yaitu then() callback dan pola async/await.

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

![Langkah 1](/assets/P5/1.png)

### Langkah 2: ElevatedButton

![Langkah 2](/assets/P5/2.png)

### Langkah 3: Run

**Soal 9**
Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 9".

![Langkah 3](/assets/P5/3.gif)

### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage

![Langkah 4](/assets/P5/4.png)

**Soal 10**
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!

- Memanggil handleError()

![onPrresed](/assets/P5/panggil_4.png)

- Hasil Run

![run](/assets/P5/soal10.gif)

- **Penjelasan:**

Langkah 1: Lebih lengkap dengan penggunaan FutureGroup untuk mengelola dan menggabungkan beberapa Future serta pengolahan hasilnya. Langkah 4: Hanya menggunakan Future.wait, dan hasilnya tidak diolah lebih lanjut. Tambahan handleError() di tombol ElevatedButton memberikan penanganan error secara terpusat dalam satu method, sedangkan di langkah 1 penanganan error dilakukan di setiap Future jika diperlukan.

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

### Langkah 4: Buat StatefulWidget
Buat class LocationScreen di dalam file geolocation.dart

### Langkah 5: Isi kode geolocation.dart

**Soal 11**
Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

![Langkah 3](/assets/P6/5.png)

### Langkah 6: Edit main.dart
Panggil screen baru tersebut di file main Anda seperti berikut.
`home: LocationScreen(),`

![Langkah 6](/assets/P6/6.png)

### Langkah 7: Run

![Langkah 7](/assets/P6/7.gif)

### Langkah 8: Tambahkan widget animasi loading

![Langkah 8](/assets/P6/8.png)

**Soal 12**
- Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));

![hasil](/assets/P6/soal12A.png)

- Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?

![hasil](/assets/P6/soal12B.png)

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 12".

![hasil](/assets/P6/soal12C.png)

---
## Praktikum 7: Manajemen Future dengan FutureBuilder

### Langkah 1: Modifikasi method getPosition()

![Langkah 1](/assets/P7/1.png)

### Langkah 2: Tambah variabel
Tambah variabel ini di class _LocationScreenState

![Langkah 2](/assets/P7/2.png)

### Langkah 3: Buat file geolocation.dart
Tambahkan file baru ini di folder lib project Anda.

![Langkah 3](/assets/P7/3.png)

### Langkah 4: Buat StatefulWidget
Buat class LocationScreen di dalam file geolocation.dart

![Langkah 4](/assets/P7/4.png)

**Soal 13**
- Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?

**Penjelasan:** Dengan praktikum sebelumnya, Posisi diperbarui dengan setState. UI menampilkan indikator loading (CircularProgressIndicator) hingga lokasi didapat, lalu menampilkan teks posisi (myPosition).
Mengandalkan variabel isLoading untuk mengontrol tampilan. Sedangkan pada praktikum ini FutureBuilder mengelola status loading secara otomatis berdasarkan Future dari getPosition. Menampilkan indikator loading saat Future belum selesai, lalu teks posisi saat selesai.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 13".

![soal 13](/assets/P7/soal13.gif)

- Seperti yang Anda lihat, menggunakan FutureBuilder lebih efisien, clean, dan reactive dengan Future bersama UI.

### Langkah 5: Isi kode geolocation.dart

![Langkah 5](/assets/P7/5.png)

**Soal 14**
- Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?

**Penjelasan:**
  - Langkah Sebelumnya:
Jika terjadi error dalam proses pengambilan lokasi, UI tidak memberikan feedback yang jelas kepada pengguna. FutureBuilder hanya menampilkan widget kosong (Text('')), sehingga pengguna tidak tahu apa yang terjadi.

- Langkah Saat Ini:
Dengan menambahkan error handling (if (snapshot.hasError)), jika terjadi error (misalnya, layanan lokasi tidak aktif atau izin lokasi tidak diberikan), aplikasi akan menampilkan pesan "Something terrible happened!". Ini memberikan informasi yang lebih baik kepada pengguna tentang adanya masalah.

- Mengapa demikian:
Error handling dalam FutureBuilder memungkinkan aplikasi merespons situasi error secara eksplisit. Sebelumnya, error tidak ditangani secara khusus, sehingga aplikasi hanya menampilkan widget default untuk state kosong. Dengan adanya handling baru, aplikasi dapat memeriksa snapshot.hasError dan menampilkan konten yang relevan, mengubah UI sesuai kebutuhan.
Ini memperbaiki pengalaman pengguna dengan memberikan feedback langsung dibandingkan dengan langkah sebelumnya.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 14".

![Langkah 3](/assets/P7/soal14.gif)

---
## Praktikum 8: Navigation route dengan Future Function

### Langkah 1: Buat file baru navigation_first.dart
Buatlah file baru ini di project lib Anda.

### Langkah 2: Isi kode navigation_first.dart
**Soal 15**
- Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
- Silakan ganti dengan warna tema favorit Anda.

![Langkah 2](/assets/P8/2.png)

### Langkah 3: Tambah method di class _NavigationFirstState
Tambahkan file baru ini di folder lib project Anda.

![Langkah 3](/assets/P8/3.png)

### Langkah 4: Buat file baru navigation_second.dart
Buat file baru ini di project lib Anda. Silakan jika ingin mengelompokkan view menjadi satu folder dan sesuaikan impor yang dibutuhkan.

### Langkah 5: Buat class NavigationSecond dengan StatefulWidget

![Langkah 5](/assets/P8/5.png)

### Langkah 6: Edit main.dart

![Langkah 6](/assets/P8/6.png)

### Langkah 8: Run
**Soal 16**
- Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

![Langkah 8](/assets/P8/soal16A.gif)

**Penjelasan:** Ketika tombol di layar kedua diklik, warna yang dipilih dikirim kembali ke layar pertama menggunakan Navigator.pop(). Di layar pertama, warna ini diterima dan memperbarui latar belakang menggunakan setState(). Ini terjadi karena Flutter mendukung navigation with data passing.

- Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!

![Langkah 8](/assets/P8/soal16B.png)

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 16".

![Langkah 8](/assets/P8/soal16C.gif)

---
## Praktikum 9: Memanfaatkan async/await dengan Widget Dialog

### Langkah 1: Buat file baru navigation_dialog.dart

### Langkah 2: Isi kode navigation_dialog.dart

![Langkah 2](/assets/P9/2.png)

### Langkah 3: Tambah method async

![Langkah 3](/assets/P9/3.png)

### Langkah 4: Panggil method di ElevatedButton

![Langkah 4](/assets/P9)

### Langkah 5: Edit main.dart

![Langkah 5](/assets/P9/5.png)

### Langkah 6: Run
Coba ganti warna background dengan widget dialog tersebut. Jika terjadi error, silakan diperbaiki. Jika berhasil, akan tampil seperti gambar berikut.

![Langkah 6](/assets/P9/6.png)

**Soal 17**
- Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
- Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W11: Soal 17".
