import 'package:flutter/material.dart';

void main() {
  runApp(Ventana01());
}

class Ventana01 extends StatelessWidget {
  const Ventana01({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Inicio sesion")
      ),
      
      body: Body(),
      
    );
  }
}

Widget Body() {
  return Container(
    decoration: const BoxDecoration( 
      image: DecorationImage( 
        image: NetworkImage("https://www.xtrafondos.com/wallpapers/chica-anime-en-las-montanas-12020.jpg"),
        fit: BoxFit.cover
       )


    ) ,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Usuario(), 
        Password(),
        Boton(),
 
        ],
    ),
  );
}

Widget Usuario() {
  return Container(
    padding: EdgeInsets.all(20),
      child: const TextField(
    decoration: InputDecoration(
        hintText: "Ingrese su Nombre", fillColor: Colors.grey, filled: true),
  ));
}

Widget Password( ) {

  return Column(
    children: [
      Container(
        decoration: BoxDecoration( 
          borderRadius: BorderRadius.circular(60)
        ),
        padding: const EdgeInsets.all(20),
        child:  TextField(
          controller: _controller,
          obscureText: true,
          decoration: const InputDecoration(
              hintText: 'Ingrese Contraseña',
              fillColor: Colors.grey,
              filled: true,
              border: InputBorder.none, )
              ,
              keyboardType: TextInputType.number,
              
        ),
      ),
    ],
  );
}

Widget Boton(){
  return Container(

    child: ElevatedButton(
      onPressed:() {
        print(_controller.text);
      },
       child: Text("Registrarse"),
       style: ElevatedButton.styleFrom( backgroundColor: Colors.amber )
    ),
  );
}
final TextEditingController _controller = TextEditingController();