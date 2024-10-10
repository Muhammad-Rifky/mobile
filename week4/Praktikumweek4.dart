/*void main() {
  var record = (1, 2);

  // Menampilkan record sebelum pertukaran
  print('Record sebelum pertukaran: $record');

  // Menggunakan fungsi tukar untuk menukar nilai
  var swappedRecord = tukar(record);

  // Menampilkan record setelah pertukaran
  print('Record setelah pertukaran: $swappedRecord');
}*/

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
//praktikum1();
//praktikum2langkah1();
//praktikum2Langkah2();
//praktikum3Langkah1();
//praktikum3Langkah2();
//praktikum4Langkah1();
//praktikum4Langkah3();
//praktikum4Langkah4();
//praktikum4Langkah5();
//praktikum4Langkah6();
//praktikum5Langkah1();
//praktikum5Langkah3();
  //praktikum5Langkah4();
  praktikum5Langkah5();
}

void praktikum1() {
  final List<String?> list = List.filled(5, null);
  // Mengisi elemen ke-1 dan ke-2
  list[1] = "Rifky";
  list[2] = "22417201176";

  // Mencetak hasil
  print("Panjang list: ${list.length}");
  print("Elemen ke-1: ${list[1]}");
  print("Elemen ke-2: ${list[2]}");

  // Mencetak semua indeks dan nilainya
  for (int i = 0; i < list.length; i++) {
    print("Index $i: ${list[i] ?? 'null'}");
  }
}

void praktikum2langkah1() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}

void praktikum2Langkah2() {
  var names1 = <String>{}; // Set kosong
  Set<String> names2 = {}; // Set kosong, ini juga valid

  // Menambahkan elemen ke names1 menggunakan .add()
  names1.add("Rifky"); // Ganti dengan nama lengkap Anda
  names1.add("2241720176"); // Ganti dengan NIM Anda

  // Menambahkan elemen ke names2 menggunakan .addAll()
  names2.addAll(
      ["Rifky", "2241720176"]); // Ganti dengan nama lengkap dan NIM Anda

  // Mencetak hasil
  print(names1); // Menampilkan isi dari names1
  print(names2); // Menampilkan isi dari names2
}

void praktikum3Langkah1() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts);
  print(nobleGases);
}

void praktikum3Langkah2() {
  // Deklarasi dan inisialisasi Map
  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Rifky';
  mhs1['NIM'] = '2241720176';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Rifky';
  mhs2[2] = '22241720176';
  // Mencetak hasil
  print("Gifts: $gifts");
  print("MHS1: $mhs1");
  print("Noble Gases: $nobleGases");
  print("MHS2: $mhs2");
}

void praktikum4Langkah1() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);
}

void praktikum4Langkah3() {
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3.length);
  var nim = [2241720176];
  var list4 = [...list3, ...nim];
  print(list4);
}

void praktikum4Langkah4() {
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}

void praktikum4Langkah5() {
  var login = 'user'; // Ubah nilai untuk contoh lain
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory'
  ];
  print(nav2);
}

void praktikum4Langkah6() {
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}

void praktikum5Langkah1() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);
}

void praktikum5Langkah4() {
  (String, int) mahasiswa = ('Muhammad Rifky', 2241720176);
  print(mahasiswa);
}

void praktikum5Langkah5() {
  var mahasiswa2 = ('Muhammad Rifky', a: 2, b: 2241720176, 'last');

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}
