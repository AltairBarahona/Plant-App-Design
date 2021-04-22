import 'package:PlantApp/constantes.dart';
import 'package:PlantApp/pantallas/home/componentes/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //quitar banda roja de la esquina
        title: 'Plant App -by Altair',
        theme: ThemeData(
          primaryColor: kColorPrimario,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kColorTexto),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen());
  }
}

class PlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
