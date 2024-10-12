# Tugas Praktikum: Aplikasi Pertama dan Widget Dasar Flutter

**Nama : Elis Nurhidayati**

**NIM : 2241720035**

**Kelas/No. Urut : TI-3C/08**

---
# Daftar Isi
1. [Tujuan Praktikum](#tujuan-praktikum)
2. [Soal 1 - Praktikum 1](#praktikum-1-membuat-project-flutter-baru)
3. [Soal 1 - Praktikum 3](#praktikum-2-membuat-repository-github-dan-laporan-praktikum)
4. [Soal 1 - Praktikum 4](#praktikum-3-menerapkan-widget-dasar)
5. [Soal 1 - Praktikum 5](#praktikum-4-menerapkan-widget-material-design-dan-ios-cupertino)


## Tujuan Praktikum:
- Membuat aplikasi pertama dengan flutter
- Mengonfigurasi emulator/device dengan flutter
- Menjelaskan bagian-bagian dari project file flutter
- Menggunakan fitur hot reload dan restart
- Menjelaskan perbedaan stateful dan stateless widget
- Menerapkan widget-widget dasar flutter dan tema

## 1. Selesaikan Praktikum 1 sampai 5, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!

### *Praktikum 1: Membuat Project Flutter Baru*
- Langkah 1:
Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.

  ![create new project](./assets/P1-1.png)

- Langkah 2:
Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.

  ![choose folder](./assets/P1-2.png)

- Langkah 3:
Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.

  ![project name](./assets/P1-3.png)

- Langkah 4:
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut. Pesan akan tampil berupa "Your Flutter Project is ready!" artinya Anda telah berhasil membuat project Flutter baru.

  ![Tampilan Proyek](./assets/P1-4.png)


### *Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum*
- Langkah 1:
Kembali ke VS Code, ubah platform di pojok kanan bawah ke emulator atau device atau bisa juga menggunakan browser Chrome. Lalu coba running project hello_world dengan tekan F5 atau Run > Start Debugging. Tunggu proses kompilasi hingga selesai, maka aplikasi flutter pertama Anda akan tampil seperti berikut.

  ![run main](./assets/P2-1.png)

- Langkah 2:
Silakan screenshot seperti pada Langkah 1, namun teks yang ditampilkan dalam aplikasi berupa nama lengkap Anda. Simpan file screenshot dengan nama 01.png pada folder images (buat folder baru jika belum ada) di project hello_world Anda. Lalu ubah isi README.md seperti berikut, sehingga tampil hasil screenshot pada file README.md. Kemudian push ke repository Anda.

  ![readme.md](./assets/P2-2.png)

### *Praktikum 4: Menerapkan Widget Dasar*
- Langkah 1: Text Widget
Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.

  ![file text_widget.dart](./assets/P3-1.png)

  Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut. Screenshot hasil milik Anda, lalu dibuat laporan pada file README.md.

  ![import class ke main](./assets/P3-2.png)

- Langkah 2: Image Widget
Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut.

  ![file image_widget.dart](./assets/P3-3.png)

  Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.

  ![assets pada pubspec.yaml](./assets/P3-4.png)

  Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.

  ![import class ke main](./assets/P3-5.png)

### *Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino*
- Langkah 1: Cupertino Button dan Loading Bar
Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

  ![file loading_cupertino.dart](./assets/P4-1.png)

- Langkah 2: Floating Action Button (FAB)
Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.

  ![file fab_widget.dart](./assets/P4-2.png)

- Langkah 3: Scaffold Widget
Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design.

Ubah isi kode main.dart seperti berikut.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'My Increment App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ), 
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
```

  ![file main increment app](./assets/P4-3.png)
  ![import class cupertino ke main](./assets/P4-3a.png)
  ![tampilan fungsi botton](./assets/P4-4.png)

### -  Langkah 4: Dialog Widget
Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog.

Ubah isi kode main.dart seperti berikut.

```dart
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: MyLayout(),
      ),
    );
  }
}

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        child: const Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text("My title"),
    content: const Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
```
  ![allert](./assets/P4-5.png)

### - Langkah 5: Input dan Selection Widget
Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.

Contoh penggunaan TextField widget adalah sebagai berikut:

  ![input textfield](./assets/P4-6.png)
  ![input textfield](./assets/P4-7.png)

### - Langkah 6: Date and Time Pickers
Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.

  ![input textfield](./assets/P4-8.png)
