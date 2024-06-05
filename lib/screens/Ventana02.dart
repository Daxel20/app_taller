import 'package:flutter/material.dart';
import 'package:taller/main.dart';
import 'package:taller/screens/Ventana01.dart';

void main(){
  runApp(Ventana02());
}

class Ventana02 extends StatelessWidget {
  const Ventana02({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Peliculas"),
      ),
    );
  }
}