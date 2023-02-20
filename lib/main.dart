import 'package:flutter/material.dart';
import 'apercu.dart';

void main() {
  runApp(const MyApp());
}

// var texte = "lol";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.fromRGBA()),
        useMaterial3: true,
      ),
      home: const Corps(),
    );
  }
}

// ignore: camel_case_types


