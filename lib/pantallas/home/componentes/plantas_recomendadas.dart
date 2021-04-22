import 'package:flutter/material.dart';

import '../../../constantes.dart';

class PlantasRecomendadas extends StatelessWidget {
  const PlantasRecomendadas({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ListaPlantasRecomendadas(
            image: "assets/images/bottom_img_1.png",
            presionado: () {},
          ),
          ListaPlantasRecomendadas(
            image: "assets/images/bottom_img_2.png",
            presionado: () {},
          ),
          ListaPlantasRecomendadas(
            image: "assets/images/bottom_img_1.png",
            presionado: () {},
          ),
        ],
      ),
    );
  }
}

class ListaPlantasRecomendadas extends StatelessWidget {
  const ListaPlantasRecomendadas({
    Key key,
    this.image,
    this.presionado,
  }) : super(key: key);

  final String image;
  final Function presionado;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: presionado,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
