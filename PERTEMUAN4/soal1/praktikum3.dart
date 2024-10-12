// void main() {
// // LANGKAH 1
//   var gifts = {
//     // Key:    Value
//     'first': 'partridge',
//     'second': 'turtledoves',
//     'fifth': 1
//   };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   // LANGKAH 3
//   var mhs1 = Map<String, String>();
//   gifts['first'] = 'partridge';
//   gifts['second'] = 'turtledoves';
//   gifts['fifth'] = 'golden rings';

//   var mhs2 = Map<int, String>();
//   nobleGases[2] = 'helium';
//   nobleGases[10] = 'neon';
//   nobleGases[18] = 'argon';

//   print(gifts);
//   print(nobleGases);
//   print(mhs1);
//   print(mhs2);
// }

// Menambahkan elemen nama dan NIM pada variabel (gifts, nobleGases, mhs1, dan mhs2)
void main() {
  // LANGKAH 1
    var gifts = <String, String>{
      // Key:    Value
      'first': 'partridge',
      'second': 'turtledoves',
      'fifth': 'golden rings',
      'nama': 'Elis Nurhidayati',
      'NIM': '2241720035',
    };

    var nobleGases = <int, String>{
      2: 'helium',
      10: 'neon',
      18: 'argon',
      3: 'Elis Nurhidayati',
      1: '2241720035',
    };

  // LANGKAH 3
    var mhs1 = <String, String>{
      'nama': 'Elis Nurhidayati',
      'NIM': '2241720035',
    };

    var mhs2 = <int, String>{
      1: 'Elis Nurhidayati',
      2: '2241720035',
    };

    print(gifts);
    print(nobleGases);
    print(mhs1);
    print(mhs2);
}
