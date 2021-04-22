import 'package:PlantApp/pantallas/detalles/detalles_screen.dart';
import 'package:flutter/material.dart';

import '../../../constantes.dart';

class ListaCardsPlantasHorizontal extends StatelessWidget {
  const ListaCardsPlantasHorizontal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CardDeRecomendacionPlanta(
            image: "assets/images/image_1.png",
            titulo: "Altair",
            pais: "Ecuador",
            precio: 400,
            presionado: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesScreen(),
                ),
              );
            },
          ),
          CardDeRecomendacionPlanta(
            image: "assets/images/image_2.png",
            titulo: "Altair",
            pais: "Ecuador",
            precio: 400,
            presionado: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesScreen(),
                ),
              );
            },
          ),
          CardDeRecomendacionPlanta(
            image: "assets/images/image_3.png",
            titulo: "Altair",
            pais: "Ecuador",
            precio: 400,
            presionado: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesScreen(),
                ),
              );
            },
          ),
          CardDeRecomendacionPlanta(
            image: "assets/images/image_1.png",
            titulo: "Altair",
            pais: "Ecuador",
            precio: 400,
            presionado: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetallesScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class CardDeRecomendacionPlanta extends StatelessWidget {
  const CardDeRecomendacionPlanta({
    Key key,
    this.image,
    this.titulo,
    this.pais,
    this.precio,
    this.presionado,
    //@required this.size,
  }) : super(key: key);

  final String image, titulo, pais;
  final int precio;
  final Function presionado;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      //Cubre el 40% del total del ancho de la pantalla
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: presionado,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  //
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  //
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kColorPrimario.withOpacity(0.23))
                  ]),
              /*Esto es una excelente forma de colocar el texto en lugar de varios containers dentro
              de otro widget*/
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$titulo\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$pais".toUpperCase(),
                          style: TextStyle(
                            color: kColorPrimario.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$precio",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kColorPrimario),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
