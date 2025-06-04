import 'package:flutter/material.dart';
import 'package:resepmamak/login.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Resep',
      theme: ThemeData(primarySwatch: Colors.red),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
