# Pertemuan 11: Pemrograman Asynchronous

**Nama : Elis Nurhidayati**
**NIM : 2241720035**
**Kelas : TI-3C**

---
# Daftar Isi
- [Tujuan Praktikum](#tujuan-praktikum)
- [Praktikum 1: Mengunduh Data dari Web Service (API)](#praktikum-1-mengunduh-data-dari-web-service-api)
- [Tujuan Praktikum](#tujuan-praktikum)
- [Tujuan Praktikum](#tujuan-praktikum)
- [Tujuan Praktikum](#tujuan-praktikum)

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

