# **Pertemuan 6 Layout dan Navigasi**


**Nama : Elis Nurhidayati**

**NIM   : 2241720035**

**Kelas : TI-3C**

---
# Daftar Isi
1. [Praktikum 5](#praktikum-5-membangun-navigasi-di-flutter)
3. [Tugas Praktikum 2](#tugas-prakitkum-2)
4. [Tampilan Akhir](#output-tampilan-aplikasi-belanja-sesuai-tugas-praktikum-2)

## *Praktikum 5: Membangun Navigasi di Flutter*

Tampilan Akhir yang akan Dibuat :
![Tampilan akhir yang akan dibuat](./assets/tampilanAkhir.png)

## Langkah 1: Siapkan project baru
- Susunan folder lib pada project 'belanja'
    ![Susunan folder lib](./assets/L1.png)

## Langkah 2: Mendefinisikan Route

- Route home_page.dart
![home page](./assets/L2a.png)
- Route item_page.dart
![item page](./assets/L2b.png)

## Langkah 3: Lengkapi Kode di main.dart

- Kode di dalam main.dart
![main](./assets/L3.png)

## Langkah 4: Membuat data model

- Folder model berisi data item.dart
![item](./assets/L4.png)

## Langkah 5: Lengkapi kode di class HomePage

- Sumber data ListView diambil dari model List dari object Item
![Listview home_page.dart](./assets/L5.png)

## Langkah 6: Membuat ListView dan itemBuilder

- Menampilkan ListView menggunakan itemBuilder. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card.
![itemBuilder home_page.dart](./assets/L6.png)


**Menjalankan aplikasi pada emulator.**

- Tampilan aplikasi yang telah dibuat pada emulator
![tampilan ListView](./assets/run1.png)


## Langkah 7: Menambahkan aksi pada ListView

- Menambahkan aksi pada ListView menggunakan widget InkWell
![aksi navigasi ListView](./assets/L7.png)
- Tampilan aplikasi setelah ListView ditekan
![tampilan ListView](./assets/run2.png)

# **Tugas Prakitkum 2**
1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator.

    ![Modifikasi navigator](./assets/T1.png)

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)

    ![Pembacaan nilai dengan ModalRoute di ItemPage](./assets/T2.png)

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

    ![item pada home_page.dart](./assets/T3a.png)
    ![GridView](./assets/T3b.png)

4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

    ![Hero Widget class GadgetCard](./assets/T4.png)

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

    ![Menambah footer Nama dan NIM](./assets/T5.png)

## **Output Tampilan Aplikasi Belanja sesuai Tugas Praktikum 2:**

![Demo tampilan](./assets/output.gif)