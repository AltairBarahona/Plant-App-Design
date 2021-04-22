import 'package:PlantApp/componentes/mi_barra_de_navegacion.dart';
import 'package:PlantApp/constantes.dart';
import 'package:PlantApp/pantallas/home/componentes/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar:
          MiBarraDeNavegacion(), //creo un widget de la clase Body
    );
  }

  // con ctrl+. me da opciones, así "extraje el método y se separó appBar y el método que lo retorna"
  AppBar buildAppBar() {
    return AppBar(
      elevation:
          0, //elevation -> controla la posición z relativa con referencia al padre para el AppBar
      leading: IconButton(
          //leading -> widget mostrado antes de "title"

          icon: SvgPicture.asset("assets/icons/menu.svg"), //aplico el asset svg
          onPressed: () {} //para la funcionalidad
          ),
    );
  }
}
