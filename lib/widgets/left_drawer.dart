import 'package:flutter/material.dart';
import 'package:craftics_cart_mobile/screens/menu.dart';
// TODO: Impor halaman MoodEntryFormPage jika sudah dibuat

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
    ),
    child: const Column(
      children: [
        Text(
          'Craftics Cart!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.all(8)),
        Text(
          "Your Gateway to Artistic Expression",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    ),
          ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Halaman Utama'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.palette_outlined),
              title: const Text('Add Craft'),
              // Bagian redirection ke MoodEntryFormPage
              onTap: () {
                /*
                TODO: Buatlah routing ke MoodEntryFormPage di sini,
                setelah halaman MoodEntryFormPage sudah dibuat.
                */
              },
            ),
        ],
      ),
    );
  }
}