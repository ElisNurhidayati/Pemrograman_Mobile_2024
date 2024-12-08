# Pemrograman Mobile - Pertemuan 13

---

Nama : Elis Nurhidayati

Kelas : 3C / 08

NIM : 2241720035

---

## Jobsheet 13 : Persistensi Data

### Praktikum 1 : Converting Dart models into JSON

#### > 1. Di editor favorit Anda, buat proyek Flutter baru dan beri nama store_data

#### > 2. Pada file main.dart, hapus kode yang ada dan tambahkan kode awal untuk aplikasi dengan kode berikut:

![Praktikum 1 - Langkah 1](./picture/p1_l2.png)

#### > 3. Tambahkan folder baru ke root proyek Anda dengan nama assets.

#### > 4. Di dalam folder aset, buat file baru bernama pizzalist.json dan salin konten yang tersedia di tautan https://gist.github.com/simoales/a33c1c2abe78b48a75ccfd5fa0de0620 File ini berisi daftar objek JSON.

![Praktikum 1 - Langkah 1](./picture/p1_l4.png)

#### > 5. Di file pubspec.yaml, tambahkan referensi ke folder aset baru, seperti yang ditunjukkan di sini:

![Praktikum 1 - Langkah 1](./picture/p1_l5.png)

#### > 6. Pada kelas \_MyHomePageState, di main.dart, tambahkan sebuah variabel state bernama pizzaString:

![Praktikum 1 - Langkah 1](./picture/p1_l67.png)

#### > 7. Untuk membaca isi file pizzalist.json, di bagian bawah kelas \_MyHomePageState di main.dart, tambahkan metode asinkron baru yang disebut readJsonFile, yang akan mengatur nilai pizzaString, seperti yang ditunjukkan di sini:

![Praktikum 1 - Langkah 1](./picture/p1_l67.png)

#### > 8. Pada kelas \_MyHomePageState, timpa metode initState dan, di dalamnya, panggil metode readJsonFile:

![Praktikum 1 - Langkah 1](./picture/p1_l8.png)

#### > 9. Sekarang, kita ingin menampilkan JSON yang diambil di properti dalam Scaffold. Untuk melakukannya, tambahkan widget Teks sebagai child dari Container kita:

![Praktikum 1 - Langkah 1](./picture/p1_l9.png)

#### > 10. Mari kita jalankan aplikasinya. Jika semuanya berjalan seperti yang diharapkan, Anda akan melihat konten file JSON di layar

![Praktikum 1 - Langkah 1](./picture/p1_l10.png)

#### > 11. Kita ingin mengubah String ini menjadi sebuah List of Objects. Kita akan mulai dengan membuat kelas baru. Dalam folder lib aplikasi kita, buat file baru bernama pizza.dart.

#### > 12. Di dalam file tersebut, tentukan properti kelas Pizza:

#### > 13. Di dalam kelas Pizza, tentukan konstruktor bernama fromJson, yang akan mengambil sebuah Map sebagai parameter dan mengubah Map menjadi sebuah instance dari Pizza:

#### > 14. Refaktor metode readJsonFile() pada kelas \_MyHomePageState. Langkah pertama adalah mengubah String menjadi Map dengan memanggil metode jsonDecode. Pada method readJsonFile, tambahkan kode yang di cetak tebal berikut ini:

![Praktikum 1 - Langkah 1](./picture/p1_l14.png)

#### > 15. Pastikan editor Anda secara otomatis menambahkan pernyataan impor untuk pustaka "dart:convert" di bagian atas file main.dart; jika tidak, tambahkan saja secara manual. Tambahkan juga pernyataan impor untuk kelas pizza:

![Praktikum 1 - Langkah 1](./picture/p1_l15.png)

#### > 16. Langkah terakhir adalah mengonversi string JSON kita menjadi List of native Dart objects. Kita dapat melakukan ini dengan mengulang pizzaMapList dan mengubahnya menjadi objek Pizza. Di dalam metode readJsonFile, di bawah metode jsonDecode, tambahkan kode berikut:

![Praktikum 1 - Langkah 1](./picture/p1_l16.png)

#### > 17. Hapus atau beri komentar pada metode setState yang mengatur String pizzaString dan kembalikan daftar objek Pizza sebagai gantinya:

![Praktikum 1 - Langkah 1](./picture/p1_l17.png)

#### > 18. Ubah signature metode sehingga Anda dapat menampilkan nilai balik secara eksplisit:

![Praktikum 1 - Langkah 1](./picture/p1_l18.png)

#### > 19. Sekarang kita memiliki objek List of Pizza. Daripada hanya menampilkan sebuah Teks kepada pengguna, kita dapat menampilkan sebuah ListView yang berisi sekumpulan widget ListTile. Di bagian atas kelas \_MyHomePageState, buat List<Pizza> bernama myPizzas:

![Praktikum 1 - Langkah 1](./picture/p1_l19.png)

#### > 20. Dalam metode initState, pastikan Anda mengatur myPizzas dengan hasil panggilan ke readJsonFile:

![Praktikum 1 - Langkah 1](./picture/p1_l20.png)

#### > 21. Tambahkan kode berikut ini di dalam Scaffold, di dalam metode build():

![Praktikum 1 - Langkah 1](./picture/p1_l21.png)

#### > 22. Jalankan aplikasi. Antarmuka pengguna sekarang seharusnya jauh lebih ramah dan terlihat seperti yang ditunjukkan pada

![Praktikum 1 - Langkah 1](./picture/p1_l22.png)

### Praktikum 2 : Reading the JSON file

#### > 1. Tambahkan metode baru ke kelas Pizza, di file pizza.dart, yang disebut toJson. Ini akan mengembalikan sebuah Map<String, dynamic> dari objek:

![Praktikum 1 - Langkah 1](./picture/p2_l1.png)

#### > 2. Setelah Anda memiliki sebuah Map, Anda dapat menserialisasikannya kembali ke dalam string JSON. Tambahkan metode baru di di bagian bawah kelas \_MyHomePageState, di dalam file main.dart, yang disebut convertToJSON:

![Praktikum 1 - Langkah 1](./picture/p2_l2.png)

#### > 3. Metode ini mengubah objek List of Pizza kembali menjadi string Json dengan memanggil metode jsonEncode lagi di pustaka dart_convert.

#### > 4. Terakhir, mari panggil metode tersebut dan cetak string JSON di Debug Console. Tambahkan kode berikut ke metode readJsonFile, tepat sebelum mengembalikan List myPizzas:

![Praktikum 1 - Langkah 1](./picture/p2_l4.png)

#### > 5. Jalankan aplikasi. Anda akan melihat string JSON dicetak, seperti yang ditunjukkan pada gambar berikut:

![Praktikum 1 - Langkah 1](./picture/p2_l5.png)

### Praktikum 3 : Saving data simply with SharedPreferences

#### > 1. Gunakan project pada pertemuan 11 bernama books. Pertama, tambahkan ketergantungan pada shared_preferences. Dari Terminal Anda, ketikkan perintah berikut

![Praktikum 1 - Langkah 1](./picture/p3_l1.png)

#### > 2. Untuk memperbarui dependensi dalam proyek Anda, jalankan perintah flutter pub get dari jendela Terminal.

![Praktikum 1 - Langkah 1](./picture/p3_l2.png)

#### > 3. Di bagian atas file main.dart, impor shared_preferences:

![Praktikum 1 - Langkah 1](./picture/p3_l3.png)

#### > 4. Di bagian atas kelas \_MyHomePageState, buat variabel status integer baru bernama appCounter:

![Praktikum 1 - Langkah 1](./picture/p3_l4.png)

#### > 5. Dalam kelas \_MyHomePageState, buat metode asinkron baru yang disebut readAndWritePreferences():

![Praktikum 1 - Langkah 1](./picture/p3_l5.png)

#### > 6. Di dalam metode readAndWritePreference, buatlah sebuah instance dari SharedPreferences:

![Praktikum 1 - Langkah 1](./picture/p3_l6.png)

#### > 7. Setelah membuat instance preferensi, kita membuat kode yang mencoba baca nilai kunci appCounter. Jika nilainya nol, setel ke 0; lalu naikkan nilainya:

![Praktikum 1 - Langkah 1](./picture/p3_l7.png)

#### > 8. Setelah itu, atur nilai kunci appCounter di preferensi ke nilai baru:

![Praktikum 1 - Langkah 1](./picture/p3_l8.png)

#### > 9. Memperbarui nilai status appCounter:

![Praktikum 1 - Langkah 1](./picture/p3_l9.png)

#### > 10. Pada metode initState di kelas \_MyHomePageState, panggil metode readAndWritePreference() dengan kode yang dicetak tebal:

![Praktikum 1 - Langkah 1](./picture/p3_l10.png)

#### > 11. Dalam metode build, tambahkan kode berikut ini di dalam widget Container:

![Praktikum 1 - Langkah 1](./picture/p3_l11.png)

#### > 12. Jalankan aplikasi. Saat pertama kali membukanya, Anda akan melihat layar yang mirip dengan yang berikut ini:

#### > 13. Tambahkan metode baru ke kelas \_MyHomePageState yang disebut deletePreference(), yang akan menghapus nilai yang disimpan:

![Praktikum 1 - Langkah 1](./picture/p3_l13.png)

#### > 14. Dari properti onPressed dari widget ElevatedButton di metode build(), memanggil metode deletePreference(), dengan kode di cetak tebal:

![Praktikum 1 - Langkah 1](./picture/p3_l14.png)

#### > 15. Jalankan aplikasi lagi. Sekarang, saat Anda menekan tombol Reset penghitung, nilai appCounter akan dihapus

![Alt Text](./picture/p3_l15.gif)

### Praktikum 4 : Accessing the filesystem, part 1 : path_provider

Buatlah project flutter baru dengan nama path_provider

#### > 1. menambahkan dependency yang relevan ke file pubspec.yaml. Tambahkan path_provider dengan mengetikkan perintah ini dari Terminal Anda:

![Praktikum 1 - Langkah 1](./picture/p4_l1.png)

#### > 2. Di bagian atas file main.dart, tambahkan impor path_provider:

![Praktikum 1 - Langkah 1](./picture/p4_l2.png)

#### > 3. Di bagian atas kelas \_MyHomePageState, tambahkan variabel State yang akan kita gunakan untuk memperbarui antarmuka pengguna:

![Praktikum 1 - Langkah 1](./picture/p4_l3.png)

#### > 4. Masih dalam kelas \_MyHomePageState, tambahkan metode untuk mengambil direktori temporary dan dokumen:

![Praktikum 1 - Langkah 1](./picture/p4_l4.png)

#### > 5. Pada metode initState dari kelas \_MyHomePageState, panggil metode getPaths:

![Praktikum 1 - Langkah 1](./picture/p4_l5.png)

#### > 6. Pada metode build \_MyHomePageState, buat UI dengan dua widget Teks yang menunjukkan path yang diambil:

![Praktikum 1 - Langkah 1](./picture/p4_l6.png)

#### > 7. Jalankan aplikasi. Anda akan melihat layar yang terlihat seperti berikut ini:

![Praktikum 1 - Langkah 1](./picture/p4_l7.png)

### Praktikum 5: Accessing the filesystem, part 2: Working with directories

#### > 1. Di bagian atas berkas main.dart, impor pustaka dart:io:

        import 'dart:io';

#### > 2. Di bagian atas kelas \_MyHomePageState, di file main.dart, buat dua variabel State baru untuk file dan isinya:

        late File myFile;
        String fileText = '';

#### > 3. Masih dalam kelas MyHomePageState, buat metode baru bernama writeFile dan gunakan kelas File dari pustaka dart:io untuk membuat file baru:

        Future<bool> writeFile() async{
            try{
            await myFile.writeAsString('Margherita, Capricciosa, Napoli');
            return true;
            }catch(e){
            return false;
            }
        }

#### > 4. Dalam metode initState, setelah memanggil metode getPaths, dalam metode then, buat sebuah file dan panggil metode writeFile:

         @override
            void initState(){
                super.initState();
                getPaths().then((_){
                myFile = File('$documentsPath/pizzas.txt');
                writeFile();
                });
            }

#### > 5. Buat metode untuk membaca file:

        Future<bool> readFile() async{
            try{
            String fileContent = await myFile.readAsString();
            setState(() {
                fileText =fileContent;
            });
            return true;
            }catch(e){
            return false;
            }
        }

#### > 6. Dalam metode build, di widget Column, perbarui antarmuka pengguna dengan ElevatedButton. Ketika pengguna menekan tombol, tombol akan mencoba membaca konten file dan menampilkannya di layar, cek kode cetak tebal:

        children: [
          Text('Doc path: $documentsPath'),
          Text('Temp path $tempPath'),
          ElevatedButton(
            onPressed: () => readFile(),
            child: const Text('Read File')
          ),
          Text(fileText),
        ],

#### > 7. Jalankan aplikasi dan tekan tombol Baca File. Di bawah tombol tersebut, Anda akan melihat teks Margherita, Capricciosa, Napoli, seperti yang ditunjukkan pada tangkapan layar berikut:

![Praktikum 1 - Langkah 1](./picture/p5_l7.png)

### Praktikum 6: Using secure storage to store data

Buatlah project flutter baru dengan nama store_data

#### > 1. Tambahkan flutter_secure_storage ke proyek Anda, dengan mengetik:

![Praktikum 1 - Langkah 1](./picture/p6_l1.png)

#### > 2. Di file main.dart, salin kode berikut:

        void main() {

runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter JSON Demo',
theme: ThemeData(
primarySwatch: Colors.deepPurple,
),
home: const MyHomePage(),
);
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({super.key});

@override
State<MyHomePage> createState() => \_MyHomePageState();
}

class \_MyHomePageState extends State<MyHomePage> {
// String pizzaString = '';
// List<Pizza> myPizzas = [];
final pwdController = TextEditingController();
String myPass ='';

@override
void initState() {
super.initState();
}

@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Path Provider')),
body:SingleChildScrollView(
child: Padding(
padding: const EdgeInsets.all(16.0),
child: Column(
children: [
TextField(
controller: pwdController,
),
ElevatedButton(child: const Text('Save Value'), onPressed: (){}),
ElevatedButton(child: const Text('Red Value'), onPressed: (){}),
Text(myPass),
],
),
),
),
// body: Container(),
);
}

#### > 3. Di bagian atas file main.dart, tambahkan impor yang diperlukan:

    import 'package:flutter_secure_storage/flutter_secure_storage.dart';

#### > 4. Di bagian atas kelas \_myHomePageState, buat penyimpanan yang aman:

    final storage = const FlutterSecureStorage();
    final myKey = 'myPass';

#### > 5. Di kelas \_myHomePageState, tambahkan metode untuk menulis data ke penyimpanan aman:

      Future writeToSecureStorage() async {
            await storage.write(key: myKey, value: pwdController.text);
        }

#### > 6. Pada metode build() dari kelas \_myHomePageState, tambahkan kode yang akan menulis ke penyimpanan ketika pengguna menekan tombol Save Value, cek kode cetak tebal:

                ElevatedButton(
                    child: const Text('Save Value'),
                    onPressed: (){writeToSecureStorage();
                }),

#### > 7. Di kelas \_myHomePageState, tambahkan metode untuk membaca data dari penyimpanan aman:

        Future<String> readFromSecureStorage() async{
            String secret = await storage.read(key: myKey)?? '';
            return secret;
        }

#### > 8. Pada metode build() dari kelas \_myHomePageState, tambahkan kode untuk membaca dari penyimpanan ketika pengguna menekan tombol Read Value dan memperbarui variabel myPass State:

            ElevatedButton(
                child: const Text('Read Value'),
                onPressed: (){readFromSecureStorage().then((value){
                  setState(() {
                    myPass = value;
                  });
                });
              }),

#### > 9. Jalankan aplikasi dan tulis beberapa teks pilihan Anda di bidang teks. Kemudian, tekan tombol Save Value. Setelah itu, tekan tombol Read Value. Anda akan melihat teks yang Anda ketik di kolom teks, seperti yang ditunjukkan pada tangkapan layar berikut:

![Alt Text](./picture/p6_l9.gif)
