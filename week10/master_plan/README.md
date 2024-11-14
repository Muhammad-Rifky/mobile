# PRAKTIKUM 1
## Langkah 1: Buat Project Baru

Buatlah sebuah project flutter baru dengan nama master_plan di folder src week-10 repository GitHub Anda atau sesuai style laporan praktikum yang telah disepakati. Lalu buatlah susunan folder dalam project seperti gambar berikut ini.

## Langkah 2: Membuat model task.dart

Praktik terbaik untuk memulai adalah pada lapisan data (data layer). Ini akan memberi Anda gambaran yang jelas tentang aplikasi Anda, tanpa masuk ke detail antarmuka pengguna Anda. Di folder model, buat file bernama task.dart dan buat class Task. Class ini memiliki atribut description dengan tipe data String dan complete dengan tipe data Boolean, serta ada konstruktor. Kelas ini akan menyimpan data tugas untuk aplikasi kita. Tambahkan kode berikut:
<img src="images/1.png">

## Langkah 3: Buat file plan.dart

Kita juga perlu sebuah List untuk menyimpan daftar rencana dalam aplikasi to-do ini. Buat file plan.dart di dalam folder models dan isi kode seperti berikut.

<img src="images/2.png">

## Langkah 4: Buat file data_layer.dart

Kita dapat membungkus beberapa data layer ke dalam sebuah file yang nanti akan mengekspor kedua model tersebut. Dengan begitu, proses impor akan lebih ringkas seiring berkembangnya aplikasi. Buat file bernama data_layer.dart di folder models. Kodenya hanya berisi export seperti berikut.

<img src="images/3.png">

## Langkah 5: Pindah ke file main.dart

Ubah isi kode main.dart sebagai berikut.

<img src="images/4.png">

## Langkah 6: buat plan_screen.dart

Pada folder views, buatlah sebuah file plan_screen.dart dan gunakan templat StatefulWidget untuk membuat class PlanScreen. Isi kodenya adalah sebagai berikut. Gantilah teks ‘Namaku' dengan nama panggilan Anda pada title AppBar.

<img src="images/5.png">

## Langkah 7: buat method _buildAddTaskButton()

Anda akan melihat beberapa error di langkah 6, karena method yang belum dibuat. Ayo kita buat mulai dari yang paling mudah yaitu tombol Tambah Rencana. Tambah kode berikut di bawah method build di dalam class _PlanScreenState.

<img src="images/6.png">

## Langkah 8: buat widget _buildList()

Kita akan buat widget berupa List yang dapat dilakukan scroll, yaitu ListView.builder. Buat widget ListView seperti kode berikut ini.

<img src="images/7.png">

## Langkah 9: buat widget _buildTaskTile
Dari langkah 8, kita butuh ListTile untuk menampilkan setiap nilai dari plan.tasks. Kita buat dinamis untuk setiap index data, sehingga membuat view menjadi lebih mudah. Tambahkan kode berikut ini.

<img src="images/8.png">
<img src="images/result1.png">

## Langkah 10: Tambah Scroll Controller
Anda dapat menambah tugas sebanyak-banyaknya, menandainya jika sudah beres, dan melakukan scroll jika sudah semakin banyak isinya. Namun, ada salah satu fitur tertentu di iOS perlu kita tambahkan. Ketika keyboard tampil, Anda akan kesulitan untuk mengisi yang paling bawah. Untuk mengatasi itu, Anda dapat menggunakan ScrollController untuk menghapus focus dari semua TextField selama event scroll dilakukan. Pada file plan_screen.dart, tambahkan variabel scroll controller di class State tepat setelah variabel plan.

<img src="images/9.png">

## Langkah 11: Tambah Scroll Listener
Tambahkan method initState() setelah deklarasi variabel scrollController seperti kode berikut.

<img src="images/10.png">

## Langkah 12: Tambah controller dan keyboard behavior
Tambahkan controller dan keyboard behavior pada ListView di method _buildList seperti kode berikut ini.

<img src="images/11.png">

## Langkah 13: Terakhir, tambah method dispose()
Terakhir, tambahkan method dispose() berguna ketika widget sudah tidak digunakan lagi.

<img src="images/12.png">

## Langkah 14: Hasil
Lakukan Hot restart (bukan hot reload) pada aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.


### TUGAS PRAKTIKUM 1

1. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?

    Jawab : 

    Dengan adanya file ini, kita hanya perlu mengimpor data_layer.dart di tempat lain dalam aplikasi, yang membuat proses impor lebih sederhana dan rapi seiring bertambahnya jumlah model dalam aplikasi.

2. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?

    Jawab : 

    Jadi, variabel plan di langkah ini diperlukan untuk menyimpan data rencana atau daftar tugas yang akan ditampilkan di layar PlanScreen. Variabel ini adalah tempat menyimpan data yang nanti bisa digunakan oleh elemen-elemen lain di layar, misalnya untuk menampilkan daftar tugas.

    Variabel plan dibuat sebagai konstanta (const Plan()) karena di awal kode ini, nilainya memang tidak diubah. Dengan menandainya sebagai const, kita memberi tahu Dart bahwa objek ini tidak akan berubah, sehingga Dart bisa mengoptimalkan penggunaan memori. Kalau nanti kita perlu mengubah isinya (misalnya menambah atau menghapus tugas), barulah kita akan mengubahnya menjadi variabel biasa tanpa const.


3. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

    Jawab : 

4. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?

# PRAKTIKUM 2

## Langkah 1: Buat file plan_provider.dart
Buat folder baru provider di dalam folder lib, lalu buat file baru dengan nama plan_provider.dart berisi kode seperti berikut.

<img src="images/13.png">

## Langkah 2: Edit main.dart
Gantilah pada bagian atribut home dengan PlanProvider seperti berikut. Jangan lupa sesuaikan bagian impor jika dibutuhkan.

<img src="images/14.png">

## Langkah 3: Tambah method pada model plan.dart
Tambahkan dua method di dalam model class Plan seperti kode berikut.

<img src="images/15.png">

## Langkah 4: Pindah ke PlanScreen
Edit PlanScreen agar menggunakan data dari PlanProvider. Hapus deklarasi variabel plan (ini akan membuat error). Kita akan perbaiki pada langkah 5 berikut ini.

## Langkah 5: Edit method _buildAddTaskButton
Tambahkan BuildContext sebagai parameter dan gunakan PlanProvider sebagai sumber datanya. Edit bagian kode seperti berikut.

<img src="images/16.png">

## Langkah 6: Edit method _buildTaskTile
Tambahkan parameter BuildContext, gunakan PlanProvider sebagai sumber data. Ganti TextField menjadi TextFormField untuk membuat inisial data provider menjadi lebih mudah.

<img src="images/17.png">

## Langkah 7: Edit _buildList
Sesuaikan parameter pada bagian _buildTaskTile seperti kode berikut.

<img src="images/18.png">

## Langkah 8: Tetap di class PlanScreen
Edit method build sehingga bisa tampil progress pada bagian bawah (footer). Caranya, bungkus (wrap) _buildList dengan widget Expanded dan masukkan ke dalam widget Column seperti kode pada Langkah 9.

## Langkah 9: Tambah widget SafeArea
Terakhir, tambahkan widget SafeArea dengan berisi completenessMessage pada akhir widget Column. Perhatikan kode berikut ini.

<img src="images/19.png">

### TUGAS PRAKTIKUM
1. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
    Jawab :
    pada langkah 1, PlanProvider merupakan InheritedWidget yang merupakan turunan dari InheritedNotifier. IneritedWidget merupakan class yang digunakan dalam berbagi data diantara widget-widget dalam pohon widget tanpa perlu mengoper secara eksplisit dalam setiap widget anak. Sehingga memungkinkan untuk memiliki data yang bisa dibagikan dan berubah-ubah dalam pohon widget tanpa harus memanggil setState secara manual pada widget-widget yang menggunakan data tersebut.

2. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
    Jawab :
    Getter completedCount dan complementMessage mempermudah akses informasi penting (jumlah tugas selesai dan kemajuan dalam bentuk pesan) dengan cara yang efisien dan mudah dibaca.

3. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!

# PRAKTIKUM 3

## Langkah 1 : Edit PlanProvider
Perhatikan kode berikut, edit class PlanProvider sehingga dapat menangani List Plan.

<img src="images/21.png">

## Langkah 2: Edit main.dart
Langkah sebelumnya dapat menyebabkan error pada main.dart dan plan_screen.dart. Pada method build, gantilah menjadi kode seperti ini.

<img src="images/22.png">

## Langkah 3: Edit plan_screen.dart
Tambahkan variabel plan dan atribut pada constructor-nya seperti berikut.

<img src="images/23.png">

## Langkah 4: Error
Itu akan terjadi error setiap kali memanggil PlanProvider.of(context). Itu terjadi karena screen saat ini hanya menerima tugas-tugas untuk satu kelompok Plan, tapi sekarang PlanProvider menjadi list dari objek plan tersebut.

## Langkah 5: Tambah getter Plan
Tambahkan getter pada _PlanScreenState seperti kode berikut.

<img src="images/24.png">

## Langkah 6: Method initState()
Pada bagian ini kode tetap seperti berikut.

<img src="images/25.png">

## Langkah 7: Widget build
Pastikan Anda telah merubah ke List dan mengubah nilai pada currentPlan seperti kode berikut ini.

<img src="images/26.png">

## Langkah 8: Edit _buildTaskTile
Pastikan ubah ke List dan variabel planNotifier seperti kode berikut ini.

<img src="images/27.png">

## Langkah 9: Buat screen baru
Pada folder view, buatlah file baru dengan nama plan_creator_screen.dart dan deklarasikan dengan StatefulWidget bernama PlanCreatorScreen. Gantilah di main.dart pada atribut home menjadi seperti berikut.

<img src="images/28.png">
<img src="images/29.png">

## Langkah 10: Pindah ke class _PlanCreatorScreenState
Kita perlu tambahkan variabel TextEditingController sehingga bisa membuat TextField sederhana untuk menambah Plan baru. Jangan lupa tambahkan dispose ketika widget unmounted seperti kode berikut.

<img src="images/30.png">

## Langkah 11: Pindah ke method build
Letakkan method Widget build berikut di atas void dispose. Gantilah ‘Namaku' dengan nama panggilan Anda.

<img src="images/31.png">

## Langkah 12: Buat widget _buildListCreator
Buatlah widget berikut setelah widget build.

<img src="images/32.png">

## Langkah 13: Buat void addPlan()
Tambahkan method berikut untuk menerima inputan dari user berupa text plan.

<img src="images/33.png">

## Langkah 14: Buat widget _buildMasterPlans()
Tambahkan widget seperti kode berikut.

<img src="images/34.png">