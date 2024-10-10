void main() {
  String name = "Muhammad Rifky Harto Biantoro";
  String nim = "2241720176";

  print("Bilangan Prima dari 0 sampai 201:");

  //untuk mencetak dari 2 = 201
  for (int i = 2; i <= 201; i++) {
    if (isPrime(i)) {
      print("$i - Ditemukan : $name, NIM: $nim");
    }
  }
}

//syarat
bool isPrime(int number) {
  if (number < 2) return false;

  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
