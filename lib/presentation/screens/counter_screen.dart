import 'package:flutter/material.dart';

// class CounterScreen extends StatelessWidget {
//   const CounterScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text('Hola Mundo'),
//       ),
//     );
//   }
// }

// StatefulWidget es un widget que puede cambiar su estado
// StatelessWidget es un widget que no puede cambiar su estado

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0; // Variable que almacena la cantidad de clicks

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contador de clicks'),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Alineación vertical
        children: [
          const Text('Cantidad de clicks realizados:', style: TextStyle(fontSize: 25),),
          Text('$counter ${counter==1?"click":"clicks"}', style: const TextStyle(fontSize: 48,fontWeight: FontWeight.bold)),
        ],
      ),),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++; // Incrementa la cantidad de clicks
          });
        }, // Función que se ejecuta al presionar el botón
        child: const Icon(Icons.plus_one), // Icono del botón
      ),
    );
  }
}
