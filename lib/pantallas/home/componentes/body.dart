import 'package:PlantApp/constantes.dart';
import 'package:PlantApp/pantallas/home/componentes/plantas_recomendadas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tituloSubrayado_con_boton.dart';
import 'header_con_cajaBuscar.dart';
import 'listaHorizontal_plantas_recomendadas.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Se puede utilizar el MediaQuery.of(context) para captar el tamaño y horientación de la pantalla.
    //el .size final captura las medidas en "píxeles lógicos".
    //Otra forma de decirlo es que nos provee el largo y ancho de la pantalla
    Size size = MediaQuery.of(context).size;
    //ctrl+. para "wrapear" el Container que estaba aquí con widget SingleChildScrollView
    //SingleChildScrollView ->widget que permite hacer scroll en dispositivos pequeños
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          /*Desarrollé el widget y luego lo extraje con ctrl+. y le di el nombre de
          "HeaderConCajaDeBuscar. Luego lo extraje en una clase que creé con el nombre
          de "header_con_cajaBuscar.dart" y pegué el código ahí para luego llamarlo aquí
          y lograr que quede más ordenado y entendible"*/

          /*Este widget contiene el ícono de menú, "Bienvenido", ícono y widget cajón de búsqueda
          con "buscar" y el ícono de lupa*/
          HeaderConCajaDeBuscar(size: size),

          /*Este widget contiene el texto "Recomendados" y el botón "Más"*/
          TituloSubrayadoConBotonEnRow(
              tituloSubrayado: "Recomendados", presionado: () {}),

          //Cubre el 40% del total del ancho de la pantalla
          ListaCardsPlantasHorizontal(),

          TituloSubrayadoConBotonEnRow(
            tituloSubrayado: "Plantas destacadas",
            presionado: () {},
          ),
          PlantasRecomendadas(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
