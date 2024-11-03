# Craftics Cart with Flutter!

Project Flutter sederhana dengan tema *e-commerce*, sebagai Tugas Individu Mata Kuliah Pemrograman Berbasis Platform rancangan **Sezza Auraghaniya** dengan NPM **2306207291**.

**Craftics Cart** adalah aplikasi jual-beli untuk pengrajin atau penggemar produk kerajinan tangan seperti rajutan, *glassware*, hiasan, dan masih banyak lainnya.

## Tugas 7 - Elemen Dasar Flutter
### Stateless & Stateful Widget
- **Stateless Widget** adalah widget yang tidak berubah selama aplikasi berjalan. Artinya, widget ini tidak memiliki state yang bisa diubah, dan tampilannya akan tetap sama setelah diinisialisasi. Contoh stateless widget adalah `Text`, `Icon`, dan `Container`.

- **Stateful Widget** adalah widget yang memiliki state yang dapat berubah selama aplikasi berjalan. Ini memungkinkan widget untuk melakukan pembaruan tampilan ketika state-nya berubah. Contoh stateful widget adalah `TextField` yang bisa berubah isinya, atau `Checkbox` yang dapat dicek dan di-uncek.

    **Perbedaan utama:** Stateless widget tidak memiliki state yang bisa diubah, sehingga tidak akan melakukan perubahan tampilan setelah diinisialisasi, sedangkan stateful widget memiliki state yang bisa diubah sehingga tampilannya dapat berubah.

### Widget yang digunakan pada project `Craftics Cart`

- **Scaffold:** Widget dasar yang menyediakan struktur layout aplikasi, seperti `app bar`, `body`, dan `floating action button`.

- **AppBar:** Header di bagian atas aplikasi yang berfungsi untuk menampilkan judul dan opsi lainnya.

- **Text:** Menampilkan teks.

- **Icon:** Menampilkan ikon yang digunakan pada tombol-tombol tertentu.

- **Padding:** Menambahkan jarak di sekitar widget tertentu untuk membuat tampilan lebih rapi.

- **SingleChildScrollView:** Memungkinkan tampilan untuk bisa di-*scroll* jika kontennya lebih panjang dari layar. Sangat berguna untuk layout dengan banyak elemen yang mungkin melebihi tinggi layar.

- **Row dan Column:** Digunakan untuk mengatur layout widget secara *horizontal (Row)* dan *vertikal (Column)*.

- **Card:** Menampilkan kotak dengan bayangan yang berfungsi untuk menampilkan konten yang dibatasi oleh batasan sudut.

- **GridView:** Menampilkan item dalam format *grid* (berupa baris dan kolom) untuk menyusun item dalam bentuk kartu.

- **InkWell:** Membuat widget menjadi *clickable* dengan memberikan efek animasi seperti *ripple* ketika ditekan.

### `setState()` function

- **Fungsi** `setState()` digunakan di dalam stateful widget untuk memberitahu Flutter bahwa ada perubahan state yang perlu di-render ulang. Ketika `setState()` dipanggil, Flutter akan menjalankan ulang build method untuk memperbarui tampilan widget yang terkait dengan state tersebut.

- **Variabel** yang terdampak adalah semua variabel yang berada dalam class state (misalnya, variabel di dalam `_MyWidgetState` untuk `MyWidget`). Hanya variabel yang diubah di dalam `setState()` yang akan menyebabkan widget untuk diperbarui.

### Perbedaan `const` dan `final`

- `const`: Menandakan nilai yang tetap konstan dan tidak pernah berubah di seluruh waktu *runtime*. Nilai `const` harus ditentukan saat waktu kompilasi dan nilainya bersifat immutable (tidak dapat diubah). `const` juga membuat objek menjadi *compile-time constant*, sehingga digunakan untuk optimisasi.

- `final`: Menandakan variabel yang nilainya diinisialisasi hanya satu kali, namun inisialisasinya dapat ditunda hingga *runtime*. Berbeda dengan `const`, `final` tidak memerlukan nilai pada saat kompilasi, tetapi nilainya tetap setelah diinisialisasi.

**Contoh perbedaan:**
- `const` digunakan untuk nilai yang benar-benar konstan (misalnya `const int a = 5;`).
- `final` dapat digunakan untuk variabel yang nilainya diketahui hanya saat runtime (misalnya `final DateTime now = DateTime.now();`).

### Pengerjaan Project Flutter
1. Membuat project `craftics cart` menggunakan command

```bash
flutter create craftics-cart-mobile
```
kemudian *test run* dengan perintah

```bash
flutter run
```

2. Membuat file `menu.dart` yang diisi dengan potongan kode dari `main.dart`

3. Mengubah widget pada `manu.dart` ke meng-*extend* Stateless

4. Menambahkan tiga tombol pada `Homepage` dengan tiga warna yang berbeda pasa `menu.dart`

``` bash
final List<ShopItem> items = [
    ShopItem("Product List", Icons.checklist, Colors.deepOrange.shade400),
    ShopItem("Add Product", Icons.add_shopping_cart, Colors.orange.shade400),
    ShopItem("Logout", Icons.logout, Colors.lightGreen.shade400),
  ];
```

5. Implementasi `Snackbar` menggunakan command `onTap:`

``` bash
onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
```