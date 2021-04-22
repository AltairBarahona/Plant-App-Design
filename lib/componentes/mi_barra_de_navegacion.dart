import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constantes.dart';

class MiBarraDeNavegacion extends StatelessWidget {
  const MiBarraDeNavegacion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: kColorPrimario.withOpacity(0.35),
          ),
        ],
      ),
      child: Row(
        //MainAxisAlignment.spaceBetween deja espacios simétricos entre íconos
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              onPressed: () {}),
        ],
      ),
    );
  }
}
