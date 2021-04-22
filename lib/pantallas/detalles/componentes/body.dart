import 'package:PlantApp/constantes.dart';
import 'package:PlantApp/pantallas/detalles/componentes/titulo_con_precio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'icono_card.dart';
import 'imagen_e_iconos.dart';

class BodyScreenDetalles extends StatefulWidget {
  @override
  _BodyDetallesState createState() => _BodyDetallesState();
}

class _BodyDetallesState extends State<BodyScreenDetalles> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //Sizedbox me permite establecer el alto para que el icono back_arrow quede arriba
          ImagenEIconos(size: size),
          TituloConPrecio(titulo: "Altair", pais: "Ecuador", precio: 400),
          SizedBox(
            //height: kDefaultPadding,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: size.width / 2,
                  height: 85,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: kColorPrimario,
                    onPressed: () {},
                    child: Text(
                      "Comprar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Descripción",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
