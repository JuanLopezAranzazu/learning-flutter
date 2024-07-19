import 'package:client/presentation/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true, // Permite usar Material 3
        colorSchemeSeed: Colors.purple // Color principal de la aplicación
      ),
      home: const CounterScreen()
    );
  }
}
