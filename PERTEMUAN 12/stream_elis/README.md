# Pertemuan 12: Lanjutan State Management dengan Streams

**Nama: Elis Nurhidayati**

**NIM: 2241720035**

**Kelas: TI-3C**

---
# Daftar Isi
- [Praktikum 1: Dart Streams](#praktikum-1-dart-streams)
- [Praktikum 2: Stream controllers dan sinks](#praktikum-2-stream-controllers-dan-sinks)


## Tujuan Praktikum
Setelah menyelesaikan codelab ini Anda akan mampu untuk:
- Menggunakan streams
- Menggunakan stream controllers dan sinks
- Menginjeksi transformasi data ke dalam streams
- Mendaftar di stream events
- Menggunakan multi stream subscriptions
- Menggunakan StreamBuilder untuk membuat UI reactive
- Menggunakan BLoC pattern


## Praktikum 1: Dart Streams
### Langkah 1: Buat Project Baru

![Langkah 1](/assets/P1/1.png)

### Langkah 2: Buka file main.dart
**Soal 1**
- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W12: Jawaban Soal 1"

![Langkah 2](/assets/P1/2.png)

### Langkah 3: Buat file baru stream.dart

![Langkah 3](/assets/P1/3.png)

### Langkah 4: Tambah variabel colors
**Soal 2**
- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 2"

![Langkah 4](/assets/P1/4.png)

### Langkah 5: Tambah method getColors()

![Langkah 5](/assets/P1/5.png)

### Langkah 6: Tambah perintah yield*
**Soal 3**
- Jelaskan fungsi keyword `yield*` pada kode tersebut!

**Penjelasan:** Keyword `yield*` dalam Dart digunakan untuk menggabungkan aliran (stream) lain ke dalam aliran yang sedang dibuat. Dalam konteks kode yang diberikan, `yield*` digunakan untuk meneruskan seluruh elemen dari stream lain (`Stream.periodic`) ke dalam stream yang dihasilkan oleh fungsi generator `getColors`.

- Apa maksud isi perintah kode tersebut?

**Penjelasan:** Kode tersebut membuat stream yang menghasilkan warna dari array colors secara berulang setiap 1 detik. yield* digunakan untuk meneruskan elemen dari Stream.periodic ke stream utama getColors.

- Lakukan commit hasil jawaban Soal 3 dengan pesan "W12: Jawaban Soal 3"

![Langkah 6](/assets/P1/6.png)

### Langkah 7: Buka main.dart

```dart
import 'stream.dart';
```

### Langkah 8: Tambah variabel

![Langkah 8](/assets/P1/8.png)

### Langkah 9: Tambah method changeColor()

![Langkah 9](/assets/P1/9.png)

### Langkah 10: Lakukan override initState()

![Langkah 10](/assets/P1/10.png)

### Langkah 11: Ubah isi Scaffold()

![Langkah 11](/assets/P1/11.png)

### Langkah 12: Run
**Soal 4**
- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lakukan commit hasil jawaban Soal 4 dengan pesan "W12: Jawaban Soal 4"

![Langkah 12](/assets/P1/12.gif)

### Langkah 13: Ganti isi method changeColor()


![Langkah 13](/assets/P1/13.png)

**Soal 5**
- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !

**Penjelasan:**
    - `listen()`: listen() digunakan untuk memulai langganan (subscription) ke sebuah stream. Fungsi ini langsung mengeksekusi callback (seperti (eventColor)) setiap kali ada data baru yang diterima dari stream. Cocok digunakan jika Anda ingin menangani stream dalam bentuk callback dan mengontrol kapan stream dimulai atau dihentikan. Ini lebih fleksibel, karena Anda bisa mengontrol lebih lanjut dengan onData, onError, atau onDone.
    - `await for`: await for digunakan untuk mendengarkan stream secara asinkron, di mana aliran data dari stream akan diterima secara berurutan. Ini adalah cara yang lebih sederhana dan langsung untuk menangani stream jika Anda hanya perlu memproses elemen stream satu per satu. Menunggu stream selesai atau berhenti dengan await for memungkinkan Anda untuk menangani data secara sekuensial.

- Lakukan commit hasil jawaban Soal 5 dengan pesan "W12: Jawaban Soal 5"

## Praktikum 2: Stream controllers dan sinks
### Langkah 1: Buka file stream.dart

```dart
import 'dart:async';
```

### Langkah 2: Tambah class NumberStream

![Langkah 2](/assets/P2/2.png)

### Langkah 3: Tambah StreamController

![Langkah 3](/assets/P2/3.png)

### Langkah 4: Tambah method addNumberToSink

![Langkah 4](/assets/P2/4.png)

### Langkah 5: Tambah method close()

![Langkah 5](/assets/P2/5.png)

### Langkah 6: Buka main.dart

```dart
import 'dart:async';
import 'dart:math';
```

### Langkah 7: Tambah variabel

![Langkah 7](/assets/P2/7.png)

### Langkah 8: Edit initState()

![Langkah 8](/assets/P2/8.png)

### Langkah 9: Edit dispose()

![Langkah 9](/assets/P2/9.png)

### Langkah 10: Tambah method addRandomNumber()

![Langkah 10](/assets/P2/10.png)

### Langkah 11: Edit method build()

![Langkah 11](/assets/P2/11.png)

### Langkah 12: Run
**Soal 6**
- Jelaskan maksud kode langkah 8 dan 10 tersebut!
**Penjelasan:** Langkah 8 (`initState`): Menginisialisasi stream dan mendengarkan data yang dikirimkan ke stream. Kemudian langkah 10 (`addRandomNumber`): Membuat angka acak dan mengirimkannya ke stream agar bisa diproses dan ditampilkan di UI.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
Lalu lakukan commit dengan pesan "W12: Jawaban Soal 6".

![Langkah 12](/assets/P2/12.gif)

### Langkah 13: Buka stream.dart

![Langkah 13](/assets/P2/13.png)

### Langkah 14: Buka main.dart

![Langkah 14](/assets/P2/14.png)

### Langkah 15: Edit method addRandomNumber()

![Langkah 15](/assets/P2/15.png)

**Soal 7**
- Jelaskan maksud kode langkah 13 sampai 15 tersebut!
**Penjelasan:** Langkah 13: Menambahkan metode `addError()` di kelas `NumberStream` untuk mengirimkan error ke stream. Langkah 15: Mengedit `addRandomNumber()` untuk mengirimkan error (bukan angka acak) ke stream ketika tombol ditekan.

- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.

    ![soal7](/assets/P2/soal7.png)

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 7".

    ![soal7](/assets/P2/addError.gif)
    ![soal7](/assets/P2/no_addError.gif)

**Penjelasan:** Dengan addError(), Setiap kali tombol ditekan, aplikasi menampilkan -1 di UI karena stream menerima error dan ditangani dengan .onError(). Sedangkan Tanpa addError() Setiap kali tombol ditekan, aplikasi menghasilkan angka acak (0-9) yang ditampilkan di UI.

## Praktikum 3: Injeksi data ke streams
### Langkah 1: Buka main.dart

![Langkah 1](/assets/P3/1.png)

### Langkah 2: Tambahkan kode ini di initState

![Langkah 2](/assets/P3/2.png)

### Langkah 3: Tetap di initState

![Langkah 3](/assets/P3/3.png)

### Langkah 4: Run
**Soal 8**
- Jelaskan maksud kode langkah 1-3 tersebut!

**Penjelasan:** Langkah 1 membuat `StreamTransformer` yang mengubah data dari stream. Misalnya, data yang diterima dikalikan dengan 10, dan jika ada error, stream akan mengirimkan nilai `-1`. Pada langkah 2 menggunakan `StreamTransformer` pada stream yang ada dengan `.transform()`. Data yang masuk ke stream akan diproses oleh transformer sebelum diteruskan ke listener, yang kemudian memperbarui tampilan UI. Dan langkah 3 memastikan bahwa `initState` dipanggil dengan benar, dan inisialisasi stream serta transformer dilakukan sebelum widget ditampilkan.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 8".

![Langkah 4](/assets/P3/4.gif)

## Praktikum 4: Subscribe ke stream events
### Langkah 1: Tambah variabel

![Langkah 1](/assets/P4/1.png)

### Langkah 2: Edit initState()

![Langkah 2](/assets/P4/2.png)

### Langkah 3: Tetap di initState()

![Langkah 3](/assets/P4/3.png)

### Langkah 4: Tambah properti onDone()

![Langkah 4](/assets/P4/4.png)

### Langkah 5: Tambah method baru

![Langkah 5](/assets/P4/5.png)

### Langkah 6: Pindah ke method dispose()

![Langkah 6](/assets/P4/6.png)

### Langkah 7: Pindah ke method build()

![Langkah 7](/assets/P4/7.png)

### Langkah 8: Edit method addRandomNumber()

![Langkah 8](/assets/P4/8.png)

### Langkah 9: Run

![Langkah 9](/assets/P4/9.gif)

### Langkah 10: Tekan button ‘Stop Subscription'

![Langkah 10](/assets/P4/10.png)

**Soal 9**
- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!

**Penjelasan:** Di langkah 2 menyiapkan stream dengan `NumberStream`, mendengarkan event dari stream menggunakan `subscription`, dan memperbarui tampilan (`lastNumber`) saat data baru diterima. Kemudian langkah 6 menghentikan langganan stream dengan `subscription.cancel()` untuk mencegah memory leaks. Dan ditambahkan di langkah 8, angka acak ke stream jika masih aktif; jika stream ditutup, `lastNumber` diset ke `-1`.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README. `Dilangkah 9`
- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 9".