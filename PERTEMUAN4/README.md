# **Tugas Praktikum: Pengantar Bahasa Pemrograman Dart - Bagian 3**

**Nama : Elis Nurhidayati**

**NIM	: 2241720035**

**Kelas : TI-3C**

---
# Daftar Isi
1. [Tujuan Praktikum](#tujuan-praktikum)
2. [Soal 1 - Praktikum 1](#praktikum-1-eksperimen-tipe-data-list)
3. [Soal 1 - Praktikum 2](#praktikum-2-eksperimen-tipe-data-set)
4. [Soal 1 - Praktikum 3](#praktikum-3-eksperimen-tipe-data-maps)
5. [Soal 1 - Praktikum 4](#praktikum-4-eksperimen-tipe-data-list-spread-dan-control-flow-operators)
6. [Soal 1 - Praktikum 5](#praktikum-5-eksperimen-tipe-data-records)
7. [Soal 2](#)
8. [Soal 3](#)
9. [Soal 4](#)
10. [Soal 5](#)
11. [Soal 6](#)
12. [Soal 7](#)


## Tujuan Praktikum:
- Menerapkan collections pada bahasa pemrograman Dart
- Menerapkan records pada bahasa pemrograman Dart
- Menerapkan functions pada bahasa pemrograman Dart

## 1. Silakan selesaikan Praktikum 1 sampai 5, lalu dokumentasikan berupa screenshot hasil pekerjaan Anda beserta penjelasannya!

### *Praktikum 1: Eksperimen Tipe Data List*

- Langkah 1: Ketik atau salin kode program berikut ke dalam void main().

    ![Screenshot](assets/P1L1.png)

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!

    ![Screenshot](assets/P1L2.png)

- Langkah 3: Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

    ![Screenshot](assets/P1L3.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

    ![Screenshot](assets/P1L3error.png)

    **Penjelasan:** Terjadi error karena list dideklarasikan dengan nilai default bertipe Null, sehingga tidak bisa diisi dengan nilai String. Solusinya, gunakan tipe String? (nullable) pada list agar dapat menampung nilai String dan null.

    **Perbaikan:**

    ![Screenshot](assets/P1L3fiks.png)

    **Output:** Mencetak nama di indeks-1 dan NIM di indeks-2

    ![Screenshot](assets/P1L3output.png)


### *Praktikum 2: Eksperimen Tipe Data Set*

- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi main().

    ![Screenshot](assets/P2L1.png)

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

    ![Screenshot](assets/P2L2.png)

- Langkah 3: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P2L3.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki namun tetap menggunakan ketiga variabel tersebut.

    ![Screenshot](assets/P2L3error.png)

    **Penjelasan:** Dua set kosong (names1 dan names2), dan sebuah map kosong (names3), karena {} tanpa tipe eksplisit di Dart diinterpretasikan sebagai map.

    Tambahkan elemen nama dan NIM Anda pada kedua variabel Set tersebut dengan dua fungsi berbeda yaitu .add() dan .addAll(). Untuk variabel Map dihapus, nanti kita coba di praktikum selanjutnya.

    ![Screenshot](assets/P2L3fiks.png)

    **Output:**

    ![Screenshot](assets/P2L3output.png)

### *Praktikum 3: Eksperimen Tipe Data Maps*
favorit Anda.
- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi main().

    ![Screenshot](assets/P3L1.png)

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

    ![Screenshot](assets/P3L2.png)

    **Penjelasan:** Kode berhasil dijalankan tanpa error karena Map di Dart mendukung berbagai tipe data untuk kunci dan nilai, jadi tidak ada masalah dengan kode ini dalam hal tipe data. Kode ini mencetak Map dengan kunci dan nilai sesuai yang didefinisikan.

- Langkah 3: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P3L3.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

    ![Screenshot](assets/P3L3output.png)

    **Penjelasan:** Tipe data pada Map gifts dan nobleGases dideklarasikan dengan tipe data tertentu, tetapi nilai yang dimasukkan tidak sesuai dengan tipe data yang ditetapkan, dan mhs1 dan mhs2 dideklarasikan namun tidak diisi dengan data, sehingga tidak berfungsi.


    Tambahkan elemen nama dan NIM Anda pada tiap variabel di atas (gifts, nobleGases, mhs1, dan mhs2).

    ![Screenshot](assets/P3L3namaNIM.png)

    **Output:**

    ![Screenshot](assets/P3L3namaNIMoutput.png)


### *Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators*

- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi main().

    ![Screenshot](assets/P4L1.png)

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

    ![Screenshot](assets/P4L2.png)

    **Penjelasan:** Tidak ada variabel list1 yang bisa dipanggil

    **Perbaikan:**

    ![Screenshot](assets/P4L2fiks.png)

    **Output:** Setelah merubah pemanggilan variael list 1 menjadi list

    ![Screenshot](assets/P4L2output.png)

- Langkah 3: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P4L3.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki.

    ![Screenshot](assets/P4L3error.png)

    **Penjelasn:** Terjadi error karena list1 belum dideklarasikan dan tidak valid sebagai Iterable atau mungkin null.

    **Perbaikan:**

    ![Screenshot](assets/P4L3fiks.png)

    **Output:**

    ![Screenshot](assets/P4L3output.png)

    Tambahkan variabel list berisi NIM Anda menggunakan Spread Operators. Dokumentasikan hasilnya dan buat laporannya!

    ![Screenshot](assets/P4L3namaNIM.png)

    **Output:**

    ![Screenshot](assets/P4L3namaNIMoutput.png)

- Langkah 4: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P4L4.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel promoActive ketika true dan false.

    ![Screenshot](assets/P4L4error.png)

    **Penjelasan:** Terjadi error karena karena variabel promoActive belum dideklarasikan sebelum digunakan di dalam list nav.

    **Perbaikan:**

    ![Screenshot](assets/P4L4fiks.png)

    - Variabel  promoActive ketika *true*

    ![Screenshot](assets/P4L4outputTrue.png)

    - Variabel promoActive ketika *false*

    ![Screenshot](assets/P4L4outputFalse.png)

- Langkah 5: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P4L5.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Tunjukkan hasilnya jika variabel login mempunyai kondisi lain.

    ![Screenshot](assets/P4L5error.png)

    **Penjelasan:** Terjadi error karena variabel login belum di deklarasi dan inisialisasi, maka perbaiki dengan menambahkannya.

    ![Screenshot](assets/P4L5fiks.png)

    - Variabel  login ketika *Manager*

    ![Screenshot](assets/P4L5ManagerOutput.png)

    - Variabel  login ketika kondisi lain, disini saya mencoba dengan menggunakan nilai  *Admin*

    ![Screenshot](assets/P4L5AdminOutput.png)


- Langkah 6: Tambahkan kode program berikut, lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P4L6.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Jelaskan manfaat Collection For dan dokumentasikan hasilnya.

    ![Screenshot](assets/P4L6output.png)

    **Penjelasan:** Tidak terjadi error, kode menampilkan daftar string dari var listOfStrings yang di awali dengan elemen ‘#0’ ,yang kemudian dilanjutkan dengan elemen string yang sesuai dari var listOfInts yang diproses dengan perulangan for jika elemen var listOfStrings yang kedua bernilai ‘#1’


### *Praktikum 5: Eksperimen Tipe Data Records*

- Langkah 1: Ketik atau salin kode program berikut ke dalam fungsi main().

    ![Screenshot](assets/P5L1.png)

- Langkah 2: Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

    ![Screenshot](assets/P5L2.png)

    **Penjelasan:** Error terjadi karena kurangnya tanda titik koma (;) pada baris 4. Perbaiki dengan titik koma di setiap akhir pernyataan.

    **Perbaikan:** 

    ![Screenshot](assets/P5L2fiks.png)

    **Output:** 

    ![Screenshot](assets/P5L2output.png)

- Langkah 3: Tambahkan kode program berikut di luar scope void main(), lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P5L3.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gunakan fungsi tukar() di dalam main() sehingga tampak jelas proses pertukaran value field di dalam Records.

    **Output sebelum menggunakan fungsi tukar():**

    ![Screenshot](assets/P5L2output.png)

    **Penjelasan:** Sebelum menggunakan fungsi tukar() di Langkah 3, tidak ada error jika kode hanya mendefinisikan fungsinya. Namun, fungsi ini harus dipanggil dalam main() agar menghasilkan output.

    **Fungsi tukar() di dalam main():**

    ![Screenshot](assets/P5L3.png)

    **Output setelah menggunakan fungsi tukar():** 

    ![Screenshot](assets/P5L3.png)

- Langkah 4: Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P5L4.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Inisialisasi field nama dan NIM Anda pada variabel record mahasiswa di atas. Dokumentasikan hasilnya dan buat laporannya!

    **Output sebelum inisialisasi variabel:**

    ![Screenshot](assets/P5L4error.png)

    **Penjelasan:** Menghasilkan error karena variabel mahasiswa dideklarasikan tetapi tidak diinisialisasi.

    **Inisialisasi variabel record:**

    ![Screenshot](assets/P5L4fiks.png)

    **Output setelah inisialisasi variabel:** 

    ![Screenshot](assets/P5L4output.png)


- Langkah 5: Tambahkan kode program berikut di dalam scope void main(), lalu coba eksekusi (Run) kode Anda.

    ![Screenshot](assets/P5L5.png)

    Apa yang terjadi ? Jika terjadi error, silakan perbaiki. Gantilah salah satu isi record dengan nama dan NIM Anda, lalu dokumentasikan hasilnya dan buat laporannya!

    **Output sebelum mengubah elemen:**

    ![Screenshot](assets/P5L5before.png)

    **Penjelasan:** Tidak terjadi error dan 0utput dari langkah ini menampilkan elemen-elemen dari record sesuai urutannya atau field yang diberikan.

    **Mengganti elemen dengan nama dan NIM:**

    ![Screenshot](assets/P5L5fiks.png)

    **Output setelah mengubah elemenl:** 

    ![Screenshot](assets/P5L5after.png)

## 2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
**Jawab:**

Fungsi (functions) di Dart adalah blok kode yang dapat digunakan untuk melakukan tugas tertentu. Fungsi memungkinkan kita untuk menulis kode yang dapat dipanggil berulang kali, memudahkan pengorganisasian dan pemeliharaan kode.

## 3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
**Jawab:**

a. Positional Parameters : Parameter ini harus diberikan sesuai urutan saat fungsi dipanggil. Positional parameters merupakan parameter default dalam fungsi.

![Screenshot](assets/soal3a.png)

b. Optional Positional Parameters : Parameter ini bersifat opsional dan ditempatkan dalam tanda kurung siku []. Jika parameter opsional tidak disertakan dalam pemanggilan fungsi, nilainya akan dianggap null atau nilai default tertentu.

![Screenshot](assets/soal3b.png)

c. Named Parameters : Named parameters memungkinkan kita memberikan nilai untuk parameter berdasarkan nama. Biasanya digunakan untuk meningkatkan keterbacaan kode. Named parameters juga bisa bersifat opsional dan ditandai dengan {}.

![Screenshot](assets/soal3c.png)

d. Optional Named Parameters : Sama seperti parameter opsional pada posisi, named parameters juga bisa opsional. Bisa diberi nilai default, atau null jika tidak diisi.

![Screenshot](assets/soal3d.png)

e. Parameter dengan Nilai Defaul : Parameter dapat diberikan nilai default, baik itu positional maupun named parameters. Jika parameter tidak diberikan saat fungsi dipanggil, nilai default tersebut akan digunakan.

![Screenshot](assets/soal3e.png)

f. Parameter Fungsi : Fungsi dapat juga menerima fungsi lain sebagai parameter. Ini berguna saat melakukan operasi seperti callback atau higher-order functions.

![Screenshot](assets/soal3f.png)


## 4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
**Jawab:**

Dalam Dart, fungsi sebagai first-class objects berarti bahwa fungsi diperlakukan sama seperti objek lainnya dalam bahasa pemrograman tersebut. Fungsi dapat dimanipulasi seperti data untuk melakukan hal-hal berikut:

a. Menyimpan fungsi dalam variabel : Fungsi dapat disimpan dalam variabel seperti halnya nilai atau objek lainnya. Hal ini memungkinkan Anda untuk memanggil fungsi menggunakan variabel, yang berguna saat Anda ingin memutuskan fungsi mana yang akan dipanggil secara dinamis.

![Screenshot](assets/soal4a.png)

b. Mengirim fungsi sebagai argumen ke fungsi lain : Dart memungkinkan fungsi dikirim sebagai argumen ke fungsi lain. Ini sering digunakan untuk callback, di mana suatu fungsi dipanggil sebagai respons terhadap sebuah peristiwa atau hasil proses.

![Screenshot](assets/soal4b.png)

c. Mengembalikan fungsi dari fungsi lain : Sebuah fungsi dalam Dart dapat mengembalikan fungsi lain. Ini memungkinkan Anda untuk membuat higher-order functions, di mana fungsi utama mengembalikan fungsi yang bisa dipanggil nantinya.

![Screenshot](assets/soal4c.png)

d. Menyimpan fungsi dalam struktur data (list, map, dll.) : Karena fungsi adalah first-class objects, Anda bisa menyimpan beberapa fungsi di dalam struktur data seperti list atau map. Ini memungkinkan Anda untuk mengelola dan mengakses beberapa fungsi dengan mudah.

![Screenshot](assets/soal4d.png)

e. Closures : Closure adalah fungsi yang dapat mengakses variabel dari lingkup (scope) di mana ia didefinisikan, bahkan setelah lingkup itu tidak lagi aktif. Dalam Dart, closures memungkinkan fungsi yang didefinisikan di dalam fungsi lain untuk "mengingat" variabel yang ada di lingkup luar.

![Screenshot](assets/soal4e.png)


## 5. Apa itu Anonymous Functions? Jelaskan dan berikan contohnya!
**Jawab:** 
Fungsi anonim di Dart adalah fungsi tanpa nama, biasanya digunakan sekali atau dalam callback. Fungsi ini didefinisikan langsung dengan tanda kurung untuk parameter, lalu tanda panah => untuk return statement sederhana, atau {} untuk pernyataan kompleks.

![Screenshot](assets/soal5.png)

## 6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
**Jawab:**

a. Lexical scope hanya berkaitan dengan aturan akses variabel berdasarkan posisi kode dalam suatu fungsi atau blok. Variabel dapat diakses dalam lingkup tertentu dan lingkup yang lebih dalam, tetapi variabel dari lingkup luar tidak disimpan jika lingkup luar selesai dieksekusi.

![Screenshot](assets/soal6a.png)

b. Lexical closure, di sisi lain, melibatkan "penutupan" lingkup di mana fungsi didefinisikan. Closure "mengingat" variabel yang ada di lingkup luar bahkan setelah fungsi luar selesai dieksekusi, membuat variabel tetap tersedia selama closure tersebut hidup.

![Screenshot](assets/soal6b.png)


## 7.Jelaskan dengan contoh cara membuat return multiple value di Functions!
**Jawab:**
Sebuah fungsi tidak dapat langsung mengembalikan beberapa nilai secara bersamaan karena fungsi hanya bisa mengembalikan satu objek. Namun, bisa mengembalikan beberapa nilai dengan cara:

a. Menggunakan list: List adalah struktur data yang dapat menyimpan beberapa nilai dalam satu tempat. Anda bisa menggunakan list untuk mengembalikan lebih dari satu nilai dari sebuah fungsi. Nilai yang dikembalikan dapat diakses berdasarkan index.

![Screenshot](assets/soal7a.png)

b. Menggunakan map: Map adalah struktur data yang menyimpan nilai dalam bentuk key-value pairs. Anda bisa menggunakan map untuk mengembalikan beberapa nilai dengan memberikan nama (key) pada setiap nilai yang dikembalikan. Ini membuat setiap nilai lebih deskriptif.

![Screenshot](assets/soal7a.png)

**Tabel Perbandingan:**
| Fitur  | List    | Map        |
| --- | ------- | ----------- |
| Cara Akses   | Menggunakan indeks ([0], [1], dst.)    | Menggunakan key (['penjumlahan'], dst.)  |
| Kejelasan   | Kurang jelas, urutan harus diingat   | Lebih jelas karena nilai diberi nama  |
| Penggunaan   | Cocok untuk beberapa nilai dengan urutan tetap    | Cocok untuk mengembalikan nilai dengan nama  |
| Kompleksitas   | Lebih sederhana    | Sedikit lebih kompleks  |
| Urutan   | Urutan tetap (akses berdasarkan indeks)    | Tidak ada urutan yang dijamin  |
