void main() {
  // LANGKAH 1
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list); // Perbaikan
  print(list2);
  print(list2.length);
  print("-----");

  // LANGKAH 3
  // Perbaikan: deklarasi variabel list1
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
  print("-----");

  // Menambahkan variabel list berisi NIM menggunakan Spread Operators
  var nim = [2241720035];
  var list4 = [...nim, ...list];
  print(list4);
  print("-----");

  // LANGKAH 4
  // Deklarasi dan inisialisasi variabel promoActive
  bool promoActive = true;
  // bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
  print("-----");

  // LANGKAH 5
  // Deklarasi dan inisialisasi variabel login 
  var login = 'Manager';
  // var login = 'Admin';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);
  print("-----");

  // LANGKAH 6 
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}