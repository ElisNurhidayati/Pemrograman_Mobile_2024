import 'package:flutter/material.dart';

class ReelsOverlay extends StatelessWidget {
  const ReelsOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: 80.0,
      left: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'TXT',
            style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Usia fisik: 22-25 tahun ❌',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          Text(
            'Usia mental: 5 tahun 3 bulan ✅',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
