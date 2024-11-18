import 'package:craftics_cart_mobile/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:craftics_cart_mobile/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Craftics Cart',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.grey,
          ).copyWith(secondary: Colors.grey[400]),
        ),
        home: const LoginPage(),
      ),
    );
  }
}