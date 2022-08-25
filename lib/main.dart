import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(Parcial1());
}

class Parcial1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Parcial1", home: Formulario());
  }
}

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Contenedor());
  }
}

Widget Contenedor() {
  return Container(
      child: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Titulo(),
        Subtitulo(),
        Subtitulo2(),
        imagen(),
        Texto(),
        space(),
        Texto2(),
        space(),
        Texto3(),
        space(),
        Texto4(),
        space(),
        btnIngresar(),
        space(),
        btnCancelar()
      ],
    ),
  ));
}

Widget Titulo() {
  return Text("PARCIAL 1- ETPS3!",
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold));
}

Widget Subtitulo() {
  return Text("Elizabeth Vasquez- 2505472018",
      style:
          TextStyle(color: Color.fromARGB(255, 148, 138, 138), fontSize: 11));
}

Widget Subtitulo2() {
  return Text("Rudy Colocho- 2520432018",
      style:
          TextStyle(color: Color.fromARGB(255, 148, 138, 138), fontSize: 11));
}

Widget imagen() {
  return Container(
      padding: EdgeInsets.all(10.0),
      child: Image.asset("image/Imagen.png", height: 200, width: 200));
}

Widget Texto() {
  return TextField(
    decoration: InputDecoration(
        icon: Icon(Icons.account_circle),
        hintText: "Ingrese su Nombre",
        fillColor: Colors.white10,
        filled: true),
  );
}

Widget Texto2() {
  return TextField(
    decoration: InputDecoration(
        icon: Icon(Icons.account_box),
        hintText: "Ingrese su Apellido",
        fillColor: Colors.white10,
        filled: true),
  );
}

Widget Texto3() {
  return TextField(
    decoration: InputDecoration(
        icon: Icon(Icons.add_reaction_outlined),
        hintText: "Ingrese su Usuario",
        fillColor: Colors.white10,
        filled: true),
  );
}

Widget Texto4() {
  return TextField(
    decoration: InputDecoration(
        icon: Icon(Icons.admin_panel_settings),
        hintText: "Ingrese su Password",
        fillColor: Colors.white10,
        filled: true),
  );
}

Widget space() {
  return SizedBox(
    height: 20.0,
  );
}

Widget btnIngresar() {
  return FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      color: Colors.blueAccent,
      onPressed: () {},
      child: Text(
        "Ingresar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}

Widget btnCancelar() {
  return FlatButton(
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      color: Colors.red,
      onPressed: () {},
      child: Text(
        "Cancelar",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ));
}
