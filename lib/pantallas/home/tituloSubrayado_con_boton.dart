import 'package:flutter/material.dart';

import '../../constantes.dart';

class TituloSubrayadoConBotonEnRow extends StatelessWidget {
  const TituloSubrayadoConBotonEnRow({
    Key key,
    this.tituloSubrayado,
    this.presionado,
  }) : super(key: key);

  final String tituloSubrayado;
  final Function presionado;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TituloConSubrayadoCustom(
            textoConSubrayado: tituloSubrayado,
          ),
          Spacer(),
          FlatButton(
            color: kColorPrimario,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            //para ejecutar sin terminar el onPressed se deja como "onPressed: () {},"
            onPressed: presionado,
            child: Text(
              "Más",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TituloConSubrayadoCustom extends StatelessWidget {
  const TituloConSubrayadoCustom({
    Key key,
    this.textoConSubrayado,
  }) : super(key: key);

  final String textoConSubrayado;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          //subrayado custom izquierdo
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              textoConSubrayado,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                //subrayado custom derecho
                margin: EdgeInsets.only(right: kDefaultPadding / 4),
                height: 7,
                color: kColorPrimario.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
