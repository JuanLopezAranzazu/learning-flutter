import 'package:flutter/material.dart';

// Botón personalizado
class CustomButton extends StatelessWidget {
  final String heroTag; // Identificador único del botón
  final IconData icon; // Icono del botón
  final VoidCallback? onPressed; // Función que se ejecuta al presionar el botón

  const CustomButton({
    super.key,
    required this.heroTag,
    required this.icon,
    this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: heroTag, // Identificador único del botón
      elevation: 5, // Elevación del botón
      onPressed: onPressed, // Función que se ejecuta al presionar el botón
      child: Icon(icon), // Icono del botón
    );
  }
}
