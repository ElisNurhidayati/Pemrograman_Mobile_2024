# Pertemuan 12: Lanjutan State Management dengan Streams

- Nama: Elis Nurhidayati
- NIM: 2241720035
- KElas: TI-3C

---
# Daftar Isi
- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)


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

### Langkah 4: Tambah variabel colors
**Soal 3**
- Jelaskan fungsi keyword `yield*` pada kode tersebut!

**Penjelasan:** Keyword `yield*` dalam Dart digunakan untuk menggabungkan aliran (stream) lain ke dalam aliran yang sedang dibuat. Dalam konteks kode yang diberikan, `yield*` digunakan untuk meneruskan seluruh elemen dari stream lain (`Stream.periodic`) ke dalam stream yang dihasilkan oleh fungsi generator `getColors`.

- Apa maksud isi perintah kode tersebut?

**Penjelasan:** Kode tersebut membuat stream yang menghasilkan warna dari array colors secara berulang setiap 1 detik. yield* digunakan untuk meneruskan elemen dari Stream.periodic ke stream utama getColors.

- Lakukan commit hasil jawaban Soal 2 dengan pesan "W12: Jawaban Soal 3"

![Langkah 6](/assets/P1/6.png)

