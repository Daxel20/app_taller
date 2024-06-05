import 'package:flutter/material.dart';
import 'package:taller/main.dart';

void main(){
  runApp(Ventana03());
}

class Ventana03 extends StatelessWidget {
  const Ventana03({super.key});

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
        title: const Text("Ver Peliculas"),
      ),
    );
  }
}