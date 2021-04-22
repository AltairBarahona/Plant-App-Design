import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constantes.dart';

class HeaderConCajaDeBuscar extends StatelessWidget {
  const HeaderConCajaDeBuscar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      /*Esta línea sirve para expandir y dejar espacio libre al final de widget entero
      para que se aprecie la sombre verde abajo del cajón de búsqueda de texto*/
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      //captura la extención vertical y cubre el 20% de su total
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          //Este contenedor es para el final del header que tiene bordes redondeados
          Container(
            //con padding colocamos espacios vacios por temas estéticos
            padding: EdgeInsets.only(
                left: kDefaultPadding,
                right: kDefaultPadding,
                bottom: kDefaultPadding + 36),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: kColorPrimario,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36),
                )),
            //Row -> widget con widgets horizontales
            child: Row(
              //Un Row admite varios "child" abarcados en el widget llamado "children"
              children: <Widget>[
                //Text -> Widget para mostrar un texto hardcodeado(escrito en código)
                Text(
                  "Bienvenido Altair",
                  /*Estilo del texto, agarra el color theme declarado en main. headline4 da el tamaño y
                  mediante copyWidth accedemos a modificar el color, fuente, anchura (weight)*/

                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                /*Spacer -> Widget que coloca un espacio dejando el siguiente widget, en este caso "Image",
                al final del espacio disponible definido por el widget que los abarca, es decir al final del
                espacio disponible en el Row*/
                Spacer(),
                Image.asset("assets/images/logo.png")
              ],
            ),
          ),
          Positioned(
              //barra blanca redondeada en el header
              //Positioned ->widget que controla la posición de un child en un stack
              //Con 0,0,0 se coloca este widget luego del anterior elemento del stack centrado
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                //Centra todo verticalmente, usado para centrar el texto hint más adelante
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding), //igual padding en los lados
                height: 54,
                //Aquí creamos la sombra inferior y el color sutil del thema de la app
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kColorPrimario.withOpacity(0.23))
                    ]
                    //
                    ),
                //este child es row para poner correctamente en forma horizontal el texto y el ícono de búsqueda
                child: Row(
                  children: <Widget>[
                    //Expanded->widget que expande un child en el espacio disponible, en este caso la entrada de texto
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          //Texto hint mostrado en el input de texto
                          hintText: "Buscar",
                          //Estilo al texto hint y al campo
                          hintStyle:
                              //color texto hint
                              TextStyle(color: kColorPrimario.withOpacity(0.5)),
                          //Deshabilitar linea inferior mostrada en el campo
                          enabledBorder: InputBorder.none,
                          //Deshabilitar línea remarcada mostrada al interactuar con el campo
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    //SuffixIcon -> widget que aparece luego de la zona editable de texto
                    SvgPicture.asset("assets/icons/search.svg")
                  ],
                ),
              )
              //
              )
        ],
      ),
    );
  }
}
