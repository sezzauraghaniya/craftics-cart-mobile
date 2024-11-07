import 'package:craftics_cart_mobile/widgets/craft_cart.dart';
import 'package:flutter/material.dart';
import 'package:craftics_cart_mobile/widgets/left_drawer.dart';

 class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});
    final String name = 'Sezza Auraghaniya Winanda'; // Nama
    final String className = 'PBP F'; // Kelas

    final List<ShopItem> items = [
    ShopItem("Lihat Penyimpanan", Icons.inventory_2_outlined, Colors.deepOrange.shade400),
    ShopItem("Tambah Craft", Icons.palette_outlined, Colors.orange.shade400),
    ShopItem("Logout", Icons.logout, Colors.lightGreen.shade400),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Cractics Cart!',
          ),
          backgroundColor: Color.fromARGB(255, 76, 75, 75),
          foregroundColor: Colors.white,
        ),
        drawer: const LeftDrawer(), // Include the LeftDrawer widget as the drawer.
        body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Your Gateway to Artistic Expression', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
    }
}