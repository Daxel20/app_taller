import 'package:flutter/material.dart';
import 'package:taller/screens/Ventana01.dart';
import 'package:taller/screens/Ventana02.dart';
import 'package:taller/screens/Ventana03.dart';
//import 'package:taller/screens/Ventana04.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "My App",
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      Cuerpo(context),
      Ventana01(),
      Ventana02(),
      Ventana03(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Aplicacion Videos"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://c4.wallpaperflare.com/wallpaper/760/459/710/aoi-ogata-anime-girls-wallpaper-preview.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: screens[_currentIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.amber,
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_outlined),
            backgroundColor: Colors.amber,
            label: "Registro",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_motion),
            backgroundColor: Colors.amber,
            label: "Peliculas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay),
            backgroundColor: Colors.amber,
            label: "Ver Peliculas",
            )
        ],
      ),
    );
  }
}

Widget Cuerpo(context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Titulo(),
        SizedBox(height: 20),
        Boton1(context),
        SizedBox(height: 20),
        Boton2(context),
        SizedBox(height: 20),
        Boton3(context),
        SizedBox(height: 20),
        Boton4(context),
        SizedBox(height: 20),
      ],
    ),
  );
}

Widget Titulo() {
  return const Text("Ve las mejores películas, donde y cuando quieras", textAlign: TextAlign.center, 
   style: TextStyle(
      color: Colors.white, 
    ),
  );
}

Widget Boton1(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
    },
    child: Text("Inicio"),
  );
}

Widget Boton2(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Ventana01()));
    },
    child: Text("Registro"),
  );
}

Widget Boton3(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Ventana02()));
    },
    child: Text("Pelicula"),
  );
}

Widget Boton4(BuildContext context) {
  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Ventana03()));
    },
    child: Text("Ver Pelicula"),
  );
}







