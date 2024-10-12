import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Xiaomi Redmi Note 12',
      price: 2599000,
      img: 'assets/redmi_note_12.jpg',
      stock: 15,
      rating: 4,
      brand: 'Xiaomi',
      features: [
        '6.67" FHD+ Display',
        '108MP Main Camera',
        '5000mAh Battery',
        'Fast Charging Support'
      ],
    ),
    Item(
      name: 'Samsung Galaxy S23',
      price: 14990000,
      img: 'assets/galaxy_s23.jpg',
      stock: 8,
      rating: 5,
      brand: 'Samsung',
      features: [
        '6.1" Dynamic AMOLED 2X',
        '50MP Triple Camera',
        '3900mAh Battery',
        'IP68 Water and Dust Resistant'
      ],
    ),
    Item(
      name: 'ASUS ROG Zephyrus G14',
      price: 29990000,
      img: 'assets/rog_zephyrus_g14.jpg',
      stock: 5,
      rating: 5,
      brand: 'ASUS',
      features: [
        '14" FHD Display',
        'AMD Ryzen 9',
        'NVIDIA GeForce RTX 3060',
        '16GB RAM'
      ],
    ),
    Item(
      name: 'Apple iPhone 14 Pro',
      price: 19990000,
      img: 'assets/iphone_14_pro.jpg',
      stock: 10,
      rating: 5,
      brand: 'Apple',
      features: [
        '6.1" Super Retina XDR',
        'Triple 48MP Camera',
        'A16 Bionic Chip',
        'Ceramic Shield'
      ],
    ),
    Item(
      name: 'Sony WH-1000XM4',
      price: 4990000,
      img: 'assets/sony_wh1000xm4.jpg',
      stock: 20,
      rating: 5,
      brand: 'Sony',
      features: [
        'Noise Cancellation',
        '30-hour Battery Life',
        'Touch Sensor Controls',
        'Voice Assistant Compatibility'
      ],
    ),
    Item(
      name: 'Dell XPS 13',
      price: 20990000,
      img: 'assets/dell_xps_13.jpg',
      stock: 6,
      rating: 4,
      brand: 'Dell',
      features: [
        '13.4" InfinityEdge Display',
        'Intel Core i7',
        '16GB RAM',
        '512GB SSD'
      ],
    ),
    Item(
      name: 'Oppo A78',
      price: 2999000,
      img: 'assets/oppo_a78.jpg',
      stock: 15,
      rating: 4,
      brand: 'Oppo',
      features: [
        '6.56" HD+ Display',
        '50MP Dual Camera',
        '5000mAh Battery',
        '33W Fast Charge'
      ],
    ),
    Item(
      name: 'Vivo V25',
      price: 3999000,
      img: 'assets/vivo_v25.jpg',
      stock: 12,
      rating: 4,
      brand: 'Vivo',
      features: [
        '6.44" FHD+ Display',
        '64MP Triple Camera',
        '4500mAh Battery',
        '44W Fast Charging'
      ],
    ),
    Item(
      name: 'JBL Flip 5',
      price: 1999000,
      img: 'assets/jbl_flip5.jpg',
      stock: 20,
      rating: 5,
      brand: 'JBL',
      features: [
        'Portable Bluetooth Speaker',
        '12-hour Battery Life',
        'IPX7 Waterproof',
        'Powerful Sound'
      ],
    ),
    Item(
      name: 'HP Pavilion x360',
      price: 13990000,
      img: 'assets/hp_pavilion_x360.jpg',
      stock: 5,
      rating: 4,
      brand: 'HP',
      features: [
        '14" Touchscreen',
        'Intel Core i5',
        '8GB RAM',
        '256GB SSD'
      ],
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = screenWidth > 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gadget & Electronics Shopping',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      // Nama dan NIM
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade900,
        height: 45,
        child: const Row(
          children: [
            Padding(padding: EdgeInsets.all(8.0)),
            Text(
              'Elis Nurhidayati - 2241720035',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
      // GridView
      body: Container(
        margin: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
            childAspectRatio: 0.65,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ItemCard(item: item);
          },
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  const ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/item', arguments: item);
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Hero Widget
              Expanded(
                child: Center(
                  child: Hero(
                    tag: item.img.toString(),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item.img.toString(),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                'by ${item.brand}',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp${item.price.toString()},00',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Text(
                    'Stock: ${item.stock.toString()}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: List.generate(5, (i) {
                  return Icon(
                    Icons.star,
                    size: 16,
                    color: i < item.rating ? Colors.yellow : Colors.grey.shade300,
                  );
                }),
              ),
              const SizedBox(height: 8),
              const Text(
                'Features:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              ...item.features.map((feature) => Text(
                    '• $feature',
                    style: const TextStyle(fontSize: 12),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import '../models/item.dart';

// class HomePage extends StatelessWidget {
//   final List<Item> items = [
//     Item(name: 'Sugar', price: 5000),
//     Item(name: 'Salt', price: 2000),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shopping List'),
//       ),
//       body: Container(
//         margin: EdgeInsets.all(8),
//         child: ListView.builder(
//           padding: EdgeInsets.all(8),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             final item = items[index];
//             return InkWell(
//               onTap: () {
//                 Navigator.pushNamed(context, '/item', arguments: item);
//               },
//               child: Card(
//                 child: Container(
//                   margin: EdgeInsets.all(8),
//                   child: Row(
//                     children: [
//                       Expanded(child: Text(item.name)),
//                       Expanded(
//                         child: Text(
//                           item.price.toString(),
//                           textAlign: TextAlign.end,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }