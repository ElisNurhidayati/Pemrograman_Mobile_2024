void main() {
  // LANGKAH 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // LANGKAH 3
  var names1 = <String>{};
    Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.
  print(names1);
  print(names2);
  print(names3);

  // Menambah elemen menggunakan fungsi .add()
  names1.add('Elis Nurhidayati');
  names1.add('2241720035');
  print(names1);

  // Menambah elemen menggunakan fngsi .addAll()
// This works, too.
  names2.addAll({'Elis Nurhidayati', '2241720035'});
  print(names2); 
}
