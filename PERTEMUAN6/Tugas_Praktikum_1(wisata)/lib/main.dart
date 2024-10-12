import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Metode untuk membuat widget titleSection
  Widget _buildTitleSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1 */
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2 */
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung Bromo',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kabupaten Probolinggo, Jawa Timur, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          /* soal 3 */
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
  }

  // P2 - Langkah 1 membuat method column
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    // P2 - Langkah 2 Membuat widget buttonSection
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // P3 - Langkah 1 Membuat widget textSection
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Bromo, yang terletak di Taman Nasional Bromo Tengger Semeru, Jawa Timur,'
        'adalah salah satu destinasi wisata paling ikonik di Indonesia.'
        'Dikenal dengan pemandangan matahari terbitnya yang menakjubkan,'
        'pengunjung dapat menikmati panorama alam yang spektakuler dari puncaknya.'
        'Selain itu, kawasan ini memiliki padang pasir yang luas, kawah aktif, dan'
        'budaya unik dari suku Tengger yang tinggal di sekitarnya. Trekking di sekitar'
        'Gunung Bromo memberikan pengalaman petualangan yang seru, di mana wisatawan bisa'
        'menjelajahi keindahan alam dan merasakan udara segar pegunungan. Dengan keindahan'
        'alam yang memukau dan suasana yang magis, Gunung Bromo menjadi tujuan yang sempurna'
        'bagi para pencinta alam dan fotografi.'
        'Elis Nurhidayati - 2241720035',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Elis Nurhidayati - 2241720035',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        // body: Column(
        body: ListView(
          children: [
            Image.asset('assets/P4.bromo.jpg', width: 600, fit: BoxFit.cover,), // P4 - Langkah 2 Menambah gambar
            _buildTitleSection(),
            buttonSection, // P2 - Langkah 3 Menambah buttonSection ke body
            textSection, // P3 - Langkah 2 Menambah textSection ke body
          ],
        ),
      ),
    );
  }
}
