import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String name = 'Sezza Auraghaniya'; // Nama
  final String className = 'PBP F'; // Kelas
  MyHomePage({super.key});

  final List<ShopItem> items = [
    ShopItem("Product List", Icons.checklist, Colors.deepOrange.shade400),
    ShopItem("Add Product", Icons.add_shopping_cart, Colors.orange.shade400),
    ShopItem("Logout", Icons.logout, Colors.lightGreen.shade400),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Craftic Carts',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Posisikan konten di tengah secara vertikal
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    'Craftics Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900,
                    ),
                  ),
                ),
                // Info cards for name and class
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoCard(title: 'Name', content: name),
                    InfoCard(title: 'Class', content: className),
                  ],
                ),
                const SizedBox(height: 16.0), // Spacing between info cards and grid

                // Grid layout
                Center(
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(10), // Kurangi padding
                    crossAxisSpacing: 5, // Kurangi jarak horizontal antar card
                    mainAxisSpacing: 5, // Kurangi jarak vertikal antar card
                    crossAxisCount: 3, // Jumlah kolom dalam grid
                    shrinkWrap: true,
                    children: items.map((ShopItem item) {
                      return ShopCard(item);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShopItem {
  final String name;
  final IconData icon;
  final Color color; // Tambahkan properti warna

  ShopItem(this.name, this.icon, this.color);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color, // Gunakan warna dari ShopItem
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 24.0, // Ukuran ikon
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white, fontSize: 14), // Ukuran teks
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String content; 

  const InfoCard({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0, // Tingkat bayangan yang sedikit lebih tinggi
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Membuat sudut melengkung lebih halus
      ),
      color: Colors.white, // Warna background untuk InfoCard
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0), // Margin luar untuk jarak antar kartu
      child: Container(
        width: MediaQuery.of(context).size.width / 3.5, // Lebar kartu disesuaikan dengan layar
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0), // Padding dalam kartu
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Mengatur konten ke sisi kiri
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0, // Ukuran font yang sedikit lebih besar untuk judul
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              content,
              style: const TextStyle(
                fontSize: 14.0, // Ukuran font yang lebih kecil untuk konten
              ),
            ),
          ],
        ),
      ),
    );
  }
}