# **Tugas Praktikum P-10 : Dasar State Management**

**Nama    :   Elis Nurhidayati**

**NIM     :   2241720035**

**Kelas   :   TI-3C**

---

# Daftar Isi
1. [Tujuan Praktikum](#tujuan-praktikum)
2. [Tugas Praktikum 1](#tugas-praktikum-1-dasar-state-dengan-model-view)
    - [Soal 1](#1-selesaikan-langkah-langkah-praktikum-tersebut-lalu-dokumentasikan-berupa-gif-hasil-akhir-praktikum-beserta-penjelasannya-di-file-readmemd-jika-anda-menemukan-ada-yang-error-atau-tidak-berjalan-dengan-baik-silakan-diperbaiki)
    - [Soal 2](#2-jelaskan-maksud-dari-langkah-4-pada-praktikum-tersebut-mengapa-dilakukan-demikian)
    - [Soal 3](#3-mengapa-perlu-variabel-plan-di-langkah-6-pada-praktikum-tersebut-mengapa-dibuat-konstanta-)
    - [Soal 4](#4-lakukan-capture-hasil-dari-langkah-9-berupa-gif-kemudian-jelaskan-apa-yang-telah-anda-buat)
    - [Soal 5](#5-apa-kegunaan-method-pada-langkah-11-dan-13-dalam-lifecyle-state-)
3. [Tugas Praktikum 2](#)
    - [Soal 1](#1-selesaikan-langkah-langkah-praktikum-tersebut-lalu-dokumentasikan-berupa-gif-hasil-akhir-praktikum-beserta-penjelasannya-di-file-readmemd-jika-anda-menemukan-ada-yang-error-atau-tidak-berjalan-dengan-baik-silakan-diperbaiki-sesuai-dengan-tujuan-aplikasi-tersebut-dibuat)
    - [Soal 2](#2-jelaskan-mana-yang-dimaksud-inheritedwidget-pada-langkah-1-tersebut-mengapa-yang-digunakan-inheritednotifier)
    - [Soal 3](#3-jelaskan-maksud-dari-method-di-langkah-3-pada-praktikum-tersebut-mengapa-dilakukan-demikian)
    - [Soal 4](#4-lakukan-capture-hasil-dari-langkah-9-berupa-gif-kemudian-jelaskan-apa-yang-telah-anda-buat-1)
4. [Tugas Praktikum 3](#)
    - [Soal 1](#1-selesaikan-langkah-langkah-praktikum-tersebut-lalu-dokumentasikan-berupa-gif-hasil-akhir-praktikum-beserta-penjelasannya-di-file-readmemd-jika-anda-menemukan-ada-yang-error-atau-tidak-berjalan-dengan-baik-silakan-diperbaiki-sesuai-dengan-tujuan-aplikasi-tersebut-dibuat-1)
    - [Soal 2](#2-berdasarkan-praktikum-3-yang-telah-anda-lakukan-jelaskan-maksud-dari-gambar-diagram-berikut-ini)
    - [Soal 3](#3-lakukan-capture-hasil-dari-langkah-14-berupa-gif-kemudian-jelaskan-apa-yang-telah-anda-buat)

## **Tujuan Praktikum**
- Menjelaskan konsep arsitektur model-view
- Mengelola data layer dengan InheritedWidget dan InheritedNotifier
- Membuat app state di multiple screens

## **Tugas Praktikum 1: Dasar State dengan Model-View**

### 1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file `README.md`! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
- Langkah 1: Buat Project Baru

    Project flutter baru dengan nama `master_plan` dan susunan folder dalam project.

    ![Langkah 1](/assets/P1/1.png)

- Langkah 2: Membuat model task.dart

    Di folder model, buat file bernama `task.dart` dan buat `class Task`. Class ini memiliki atribut `description` dengan tipe data String dan `complete` dengan tipe data Boolean, serta ada konstruktor. Kelas ini akan menyimpan data tugas untuk aplikasi kita.

    ![Langkah 2](/assets/P1/2.png)

- Langkah 3: Buat file plan.dart

    Buat sebuah List untuk menyimpan daftar rencana dalam aplikasi to-do ini di file `plan.dart` di dalam folder `models`.

    ![Langkah 3](/assets/P1/3.png)

- Langkah 4: Buat file data_layer.dart

    Buat file bernama `data_layer.dart` di folder models. Kodenya hanya berisi export kedua model sebelumnya.

    ![Langkah 4](/assets/P1/4.png)
    
- Langkah 5: Pindah ke file main.dart

    ![Langkah 5](/assets/P1/5.png)
    
- Langkah 6: buat plan_screen.dart

    Pada folder `views`, buatlah sebuah file `plan_screen.dart` dan gunakan templat `StatefulWidget` untuk membuat `class PlanScreen`.

    ![Langkah 6](/assets/P1/6.png)
    
- Langkah 7: buat method _buildAddTaskButton()

    Tambah kode untuk membuat  tombol Tambah Rencana berikut di bawah method `build` di dalam `class _PlanScreenState`.

    ![Langkah 7](/assets/P1/7.png)
    
- Langkah 8: buat widget _buildList()

    Buat widget berupa `ListView` yang dapat dilakukan scroll, yaitu `ListView.builder`.

    ![Langkah 8](/assets/P1/8.png)
    
- Langkah 9: buat widget _buildTaskTile

    Membuat `ListTile` untuk menampilkan setiap nilai dari `plan.tasks`. Kita buat dinamis untuk setiap `index` data, sehingga membuat `view` menjadi lebih mudah.

    ![Langkah 9](/assets/P1/9.png)
    
- Langkah 10: Tambah Scroll Controller

    Menggunakan `ScrollController` untuk menghapus focus dari semua `TextField` selama event scroll dilakukan. Pada file `plan_screen.dart`, tambahkan variabel scroll controller di class State tepat setelah variabel `plan`.

    ![Langkah 10](/assets/P1/10.png)
    
- Langkah 11: Tambah Scroll Listener

    Tambahkan method `initState()` setelah deklarasi variabel `scrollController` .

    ![Langkah 11](/assets/P1/11.png)
 
- Langkah 12: Tambah controller dan keyboard behavior

    Tambahkan controller dan keyboard behavior pada ListView di method `_buildList` .

    ![Langkah 12](/assets/P1/12.png)
 
- Langkah 13: Terakhir, tambah method dispose()

    Terakhir, tambahkan method `dispose()` berguna ketika widget sudah tidak digunakan lagi.

    ![Langkah 13](/assets/P1/13.png)
 
- Langkah 14: Hasil

    ![Langkah 14](/assets/P1/hasil-P1.gif)

**Penjelasan:**
1. Struktur Aplikasi: Layar utama menampilkan judul “Master Plan Elis” di bilah aplikasi. Aplikasi ini memiliki tombol aksi mengambang di kanan bawah untuk menambahkan tugas ke daftar.
2. Menambahkan Tugas: Ketika pengguna mengetuk tombol “+ (FloatingActionButton), sebuah tugas baru yang masih kosong akan ditambahkan ke dalam daftar tugas.
3. Tampilan Tugas: Setiap tugas muncul sebagai `ListTile` dengan kotak centang dan bidang teks. Kotak centang menunjukkan apakah tugas sudah selesai, dan bidang teks menunjukkan deskripsi tugas.
4. Interaktivitas:
    - Checkbox: Mengetuk checkbox akan menandai tugas sebagai selesai atau tidak selesai. Status checkbox disimpan dalam objek `Task`.
    - Text Field: Pengguna dapat memasukkan atau mengedit deskripsi tugas di Text Field. Setiap perubahan akan memperbarui deskripsi tugas terkait.
5. Scrolling: Daftar tugas dibungkus dalam `ListView.builder`, yang memungkinkan pengguliran tugas jika daftarnya terlalu panjang untuk muat di layar. `Scroll controller` juga memiliki `listener` untuk menutup keyboard saat menggulir.
6. Keyboard Behavior: Kode ini mencakup perilaku khusus platform untuk menutup keyboard saat menggulir (otomatis pada iOS).
---

### 2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
**Jawab:** Membuat file `data_layer.dart` yang berisi `export` untuk `plan.dart` dan `task.dart`. Tujuannya adalah untuk menyatukan file-file model dalam satu file ekspor. Dengan hal itu, ketika kita perlu mengimpor model ke dalam file lain, cukup mengimpor `data_layer.dart` saja, tanpa harus mengimpor setiap file model secara terpisah. Ini membuat proses pengembangan lebih ringkas dan memudahkan pengelolaan model saat aplikasi berkembang.

---
### 3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
**Jawab:** Variabel `plan` menyimpan data daftar tugas dalam `PlanScreen`. Inisialisasi awalnya sebagai konstanta (`const Plan`) memberi nilai awal yang stabil dan diubah saat pengguna menambahkan tugas.

---
### 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![Capture langkah 9](/assets/output9.gif)

---
### 5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
**Jawab:** 
- `initState` (Langkah 11): Menginisialisasi scrollController dan menambahkan listener untuk menutup keyboard saat scroll, berguna untuk daftar panjang, terutama di iOS.
- `dispose` (Langkah 13): Membersihkan `scrollController` untuk mencegah kebocoran memori saat widget dihapus.

## **Tugas Praktikum 2: InheritedWidget**

### 1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file `README.md`! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
- Langkah 1: Buat file plan_provider.dart

    Buat folder baru `provider` di dalam folder `lib`, lalu buat file baru dengan nama plan_provider.dart

    ![Langkah 1](/assets/P2/1.png)

- Langkah 2: Edit main.dart

    Gantilah pada bagian atribut `home` dengan `PlanProvider`. Jangan lupa sesuaikan bagian impor jika dibutuhkan.

    ![Langkah 2](/assets/P2/2.png)

- Langkah 3: Tambah method pada model plan.dart

    ![Langkah 3](/assets/P2/3.png)

- Langkah 4: Pindah ke PlanScreen

    Edit `PlanScreen` agar menggunakan data dari `PlanProvider`. Hapus deklarasi variabel `plan` (ini akan membuat error). Kita akan perbaiki pada langkah 5 berikut ini.
    
- Langkah 5: Edit method _buildAddTaskButton

    Tambahkan `BuildContext` sebagai parameter dan gunakan `PlanProvider` sebagai sumber datanya.

    ![Langkah 5](/assets/P2/5.png)
    
- Langkah 6: Edit method _buildTaskTile

    Tambahkan parameter `BuildContext`, gunakan `PlanProvider` sebagai sumber data. Ganti `TextField` menjadi `TextFormField` untuk membuat inisial `data provider` menjadi lebih mudah.

    ![Langkah 6](/assets/P2/6.png)
    
- Langkah 7: Edit _buildList

    Sesuaikan parameter pada bagian `_buildTaskTile`.

    ![Langkah 7](/assets/P2/7.png)
    
- Langkah 8: Tetap di class PlanScreen

Edit method build sehingga bisa tampil progress pada bagian bawah (footer). Caranya, bungkus (wrap) _buildList dengan widget Expanded dan masukkan ke dalam widget Column seperti kode pada Langkah 9.
    
- Langkah 9: Tambah widget SafeArea

    Terakhir, tambahkan widget `SafeArea` dengan berisi `completenessMessage` pada akhir widget `Column`.

    ![Langkah 9](/assets/P2/9.png)

---
### 2. Jelaskan mana yang dimaksud `InheritedWidget` pada langkah 1 tersebut! Mengapa yang digunakan `InheritedNotifier`?
**Jawab:** 
- `InheritedWidget` : Pada langkah 1, PlanProvider adalah `InheritedWidget` yang digunakan. `PlanProvider` bertindak sebagai "penyedia" data untuk widget turunannya, memungkinkan data `Plan` diakses oleh semua widget di bawahnya dalam hierarki widget.
- Alasan Menggunakan InheritedNotifier : `InheritedNotifier` dipilih sebagai turunan dari `InheritedWidget` karena mendukung pembaruan data secara otomatis setiap kali data dalam `ValueNotifier<Plan>` berubah. Dengan InheritedNotifier, ketika `ValueNotifier` memicu perubahan, hanya widget yang membutuhkan (menggunakan `ValueListenableBuilder` pada data `Plan`) yang akan diperbarui, mengurangi kebutuhan akan rebuild pada keseluruhan widget tree dan membuat aplikasi lebih efisien.

---
### 3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
**Jawab:** 
Pada langkah 3, method `completedCount` menghitung jumlah tugas yang sudah selesai, sedangkan `completenessMessage `menghasilkan pesan progress dari total tugas yang ada. Kedua method ini memudahkan tampilan informasi status penyelesaian tugas di footer aplikasi, menjaga logika perhitungan tetap terpusat di model `Plan` dan membuat kode tampilan lebih rapi.

---
### 4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![Langkah 9](/assets/P2/hasil-P2.gif)


**Penjelasan:**
- **Manajemen State dengan InheritedWidget:** Di praktikum sebelumnya, data `model Plan` dikelola langsung di dalam `PlanScreen` sebagai variabel lokal, sementara di praktikum ini, data `Plan` dikelola menggunakan `InheritedWidget` (`PlanProvider`), yang membuat data bisa diakses oleh seluruh widget turunannya dengan lebih efisien.
- **Penggunaan ValueNotifier dan ValueListenableBuilder:** Praktikum ini memperkenalkan `ValueNotifier` dan `ValueListenableBuilder` untuk memudahkan pembaruan tampilan secara otomatis setiap kali data `Plan` berubah, sehingga aplikasi lebih reaktif tanpa perlu banyak `setState`.
- **Pemisahan Data dari View:** Praktikum ini memisahkan data dari logika tampilan (`view`) sehingga lebih modular dan mudah dipelihara. Model `Plan` kini dapat diakses secara global dalam widget-tree melalui `PlanProvider`, berbeda dengan sebelumnya yang menempatkan logika data dalam view langsung.
- **Secara Tampilan:** Perubahan utama adalah penggunaan InheritedWidget (PlanProvider) untuk mengelola data secara global. Ini memungkinkan pesan progres ("0 out of 0 tasks") di bagian bawah layar dan pembaruan tampilan secara otomatis saat data berubah, tanpa perlu variabel tambahan di setiap widget. Tidak ada perubahan visual besar, tetapi manajemen data menjadi lebih efisien.

## **Tugas Praktikum 3: State di Multiple Screens**
### 1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file `README.md`! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
- Langkah 1: Edit PlanProvider
    Edit class PlanProvider sehingga dapat menangani List Plan.

    ![Langkah ](/assets/P3/1.png)

- Langkah 2: Edit main.dart
    Langkah sebelumnya dapat menyebabkan error pada main.dart dan plan_screen.dart. Pada method build, gantilah menjadi kode seperti ini.

    ![Langkah ](/assets/P3/2.png)

- Langkah 3: Edit plan_screen.dart
    Tambahkan variabel plan dan atribut pada constructor-nya

    ![Langkah ](/assets/P3/3.png)

- Langkah 4: Error
    Itu akan terjadi error setiap kali memanggil PlanProvider.of(context). Itu terjadi karena screen saat ini hanya menerima tugas-tugas untuk satu kelompok Plan, tapi sekarang PlanProvider menjadi list dari objek plan tersebut.

    ![Langkah ](/assets/P3/4.png)

- Langkah 5: Tambah getter Plan
    Tambahkan getter pada _PlanScreenState 

    ![Langkah ](/assets/P3/5.png)

- Langkah 6: Method initState()
    Pada bagian ini kode tetap seperti berikut.

    ![Langkah ](/assets/P3/6.png)

- Langkah 7: Widget build
    Pastikan Anda telah merubah ke List dan mengubah nilai pada currentPlan 

    ![Langkah ](/assets/P3/7.png)

- Langkah 8: Edit _buildTaskTile
    Pastikan ubah ke List dan variabel planNotifier

    ![Langkah ](/assets/P3/8.png)

- Langkah 9: Buat screen baru
    Pada folder view, buatlah file baru dengan nama plan_creator_screen.dart dan deklarasikan dengan StatefulWidget bernama PlanCreatorScreen. Gantilah di main.dart pada atribut home

    ![Langkah ](/assets/P3/9.png)
    ![Langkah ](/assets/P3/9a.png)

- Langkah 10: Pindah ke class _PlanCreatorScreenState
    Kita perlu tambahkan variabel TextEditingController sehingga bisa membuat TextField sederhana untuk menambah Plan baru. Jangan lupa tambahkan dispose ketika widget unmounted

    ![Langkah ](/assets/P3/10.png)

- Langkah 11: Pindah ke method build
    Letakkan method Widget build berikut di atas void dispose.

    ![Langkah ](/assets/P3/11.png)

- Langkah 12: Buat widget _buildListCreator
    Buatlah widget berikut setelah widget build.

    ![Langkah ](/assets/P3/12.png)

- Langkah 13: Buat void addPlan()
    Tambahkan method berikut untuk menerima inputan dari user berupa text plan.

    ![Langkah ](/assets/P3/13.png)

- Langkah 14: Buat widget _buildMasterPlans()

    ![Langkah ](/assets/P3/14.png)

---
### 2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!

![pict](/assets/Tugas3.png)

**Penjelasan:** 
- Diagram widget tree yang pertama menunjukkan tampilan aplikasi saat user membuat rencana baru. Pada `PlanCreatorScreen`, kita dapat memanipulasi berbagai elemen seperti `TextField` dan `Expanded` yang disusun dalam `column`. Data paket dikelola melalui `PlanProvider` dan  daftar paket ditampilkan. PlanProvider terletak di pohon widget di bawah `MaterialApp`.
- Saat user menavigasi ke tampilan utama aplikasi (`PlanScreen`) di widget tree yang kedua, daftar rencana yang  dibuat sebelumnya akan ditampilkan. Data paket masih dikelola oleh `PlanProvider` dan tetap berada di akar widget tree untuk memudahkan akses antar tampilan. Struktur tampilan menggunakan `column`, `Expanded` mengatur item seperti daftar tugas yang ditampilkan dalam `ListView`. Selain itu,  di bawah `SafeArea` terdapat elemen `Text` tempat kita menampilkan pesan penyelesaian rencana.


---
### 3. Lakukan capture hasil dari Langkah 14 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

![pict](/assets/P3/hasil-P3.gif)

**Penjelasan:** 

Di layar ini, pengguna dapat membuat rencana (plan) dengan mengisi nama rencana melalui TextField dan menambahkannya ke dalam daftar rencana yang ada. Saat pengguna mengklik salah satu rencana, mereka akan diarahkan ke tampilan detail, di mana mereka dapat melihat informasi lebih lanjut tentang rencana tersebut.

Pada tampilan detail, pengguna memiliki kemampuan untuk menambahkan dan mengelola tugas (task) terkait rencana yang dipilih. Mereka dapat mengisi deskripsi task dan menandai statusnya, baik selesai maupun belum. Fitur ini memungkinkan pengguna untuk tetap terorganisir dan mengontrol pelaksanaan tugas-tugas yang diperlukan untuk mencapai tujuan rencana mereka, menjadikan aplikasi ini alat perencanaan dan manajemen tugas yang efektif.