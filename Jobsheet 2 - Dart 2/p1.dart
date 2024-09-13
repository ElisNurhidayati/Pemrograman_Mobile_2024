void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") {
    print("Test2 again");
  }

  String test1 = "true"; // Menggunakan nama variabel yang berbeda
  if (test1 == "true") { // Nila boolean
    print("Kebenaran");
  }
}
