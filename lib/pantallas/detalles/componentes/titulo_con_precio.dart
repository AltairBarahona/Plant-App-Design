import 'package:flutter/material.dart';

import '../../../constantes.dart';

class TituloConPrecio extends StatelessWidget {
  const TituloConPrecio({
    Key key,
    this.titulo,
    this.pais,
    this.precio,
  }) : super(key: key);

  final String titulo, pais;
  final int precio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$titulo\n",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kColorTexto, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: pais,
                  style: TextStyle(
                      fontSize: 20,
                      color: kColorPrimario,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Spacer(),
          Text(
            "\$$precio",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kColorPrimario),
          ),
        ],
      ),
    );
  }
}
