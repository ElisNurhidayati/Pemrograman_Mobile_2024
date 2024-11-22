# Pertemuan 12: Lanjutan State Management dengan Streams

**Nama: Elis Nurhidayati**

**NIM: 2241720035**

**Kelas: TI-3C**

---
# Praktikum 7: BLoC Pattern
## Langkah 1: Buat Project Baru

![Langkah 1](/assets/1.png)

## Langkah 2: Isi kode random_bloc.dart

![Langkah 2](/assets/2.png)

## Langkah 3: Buat class RandomNumberBloc()

![Langkah 3](/assets/3.png)

## Langkah 4: Buat variabel StreamController

![Langkah 4](/assets/4.png)

## Langkah 5: Buat constructor

![Langkah 5](/assets/5.png)

## Langkah 6: Buat method dispose()

![Langkah 6](/assets/6.png)

## Langkah 7: Edit main.dart

![Langkah 7](/assets/7.png)

## Langkah 8: Buat file baru random_screen.dart
Di dalam folder lib project Anda, buatlah file baru ini.

## Langkah  9: Lakukan impor material dan random_bloc.dart

![Langkah 9](/assets/8.png)

## Langkah 10: Buat StatefulWidget RandomScreen

![Langkah 10](/assets/9.png)

## Langkah 11: Buat variabel

![Langkah 11](/assets/10.png)

## Langkah 12: Buat method dispose()

![Langkah 12](/assets/11.png)

## Langkah Edit method build()

![Langkah 12](/assets/12.png)

**Soal 13**
- Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

**Penjelasan:**
Praktikum ini bertujuan untuk mengimplementasikan pola BLoC (Business Logic Component) di Flutter. Pola ini memisahkan logika bisnis dari UI, sehingga kode menjadi lebih modular, reaktif, mudah diuji, dan dapat digunakan kembali.

Letak Konsep Pola BLoC
1. StreamController
Mengelola komunikasi antara logika bisnis dan UI: 
Input: Event diterima melalui _generateRandomController.
Output: Data angka acak dikirim ke UI melalui _randomNumberController.
2. Pemrosesan Event
Event (generateRandom.add(null)) memicu pembuatan angka acak, yang diteruskan ke stream output untuk UI.
3. StreamBuilder
Mendengarkan perubahan pada stream (randomNumber) dan memperbarui UI secara otomatis saat data berubah.
4. Pemisahan Logika dan UI
Logika bisnis berada di random_bloc.dart, sedangkan UI dikelola di random_screen.dart.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![Langkah 13](/assets/soal13.gif)

- Lalu lakukan commit dengan pesan "W12: Jawaban Soal 13".