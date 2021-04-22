import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constantes.dart';

class IconoCard extends StatelessWidget {
  const IconoCard({
    Key key,
    this.icono,
  }) : super(key: key);

  final String icono;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kColorFondo,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: kColorPrimario.withOpacity(0.5),
          ),
          BoxShadow(
            offset: Offset(-15, -15),
            blurRadius: 20,
            color: Colors.white,
          ),
        ],
      ),
      child: SvgPicture.asset(icono),
    );
  }
}
