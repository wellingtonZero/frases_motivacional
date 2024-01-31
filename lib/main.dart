
import 'package:flutter/material.dart';
import 'package:frases_motivacional/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Treino",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
 
