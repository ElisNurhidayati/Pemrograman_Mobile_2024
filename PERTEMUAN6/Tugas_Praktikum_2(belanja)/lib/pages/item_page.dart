import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(item.img, fit: BoxFit.cover),
            ),
            const SizedBox(height: 16),
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'by ${item.brand}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              'Price: Rp${item.price},00',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
            ),
            const SizedBox(height: 16),
            Text(
              'Stock: ${item.stock}',
              style: const TextStyle(fontSize: 16, color: Colors.redAccent),
            ),
            const SizedBox(height: 16),
            const Text(
              'Features:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8),
            ...item.features.map((feature) => Text(
                  '• $feature',
                  style: const TextStyle(fontSize: 14),
                )),
          ],
        ),
      ),
    );
  }
}




// import 'package:belanja/models/item.dart';
// import 'package:flutter/material.dart';

// class ItemPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final Item item = ModalRoute.of(context)!.settings.arguments as Item;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Item Page'),
//       ),
//       body: Center(
//         child: Text('Details of the selected item will be shown here.'),
//       ),
//     );
//   }
// }