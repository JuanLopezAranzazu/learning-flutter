import 'package:client/config/router/app_router.dart';
import 'package:client/config/theme/app_theme.dart';
// import 'package:client/presentation/screens/counter_functions_screen.dart';
// import 'package:client/presentation/screens/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( // Para el manejo de rutas
      debugShowCheckedModeBanner: false,
      theme: AppTheme(isDark: false).theme(),
      routerConfig: appRouter // Configuración de rutas
    );
  }
}
