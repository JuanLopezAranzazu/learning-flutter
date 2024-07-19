import 'package:client/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counter = 0; // Variable que almacena la cantidad de clicks

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de clicks'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh), // Icono del botón
            onPressed: () {
              setState(() {
                counter = 0; // Reinicia la cantidad de clicks
              });
            }, // Función que se ejecuta al presionar el botón
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Alineación vertical
          children: [
            const Text('Cantidad de clicks realizados:', style: TextStyle(fontSize: 25),),
            Text('$counter ${counter==1?"click":"clicks"}', style: const TextStyle(fontSize: 48,fontWeight: FontWeight.bold)),
          ],
      ),),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Alineación vertical
        children: [
          CustomButton(
            heroTag: "button-to-increase",
            icon: Icons.exposure_plus_1,
            onPressed: (){
              setState(() {
                counter++; // Incrementa la cantidad de clicks
              });
            }),// Botón personalizado
          const SizedBox(height: 10,), // Espacio entre los botones
          CustomButton(
            heroTag: "button-to-decrease",
            icon: Icons.exposure_minus_1,
            onPressed: (){
              setState(() {
                if(counter>0) counter--; // Decrementa la cantidad de clicks
              });
          }), // Botón personalizado
      ],)
    );
  }
}
