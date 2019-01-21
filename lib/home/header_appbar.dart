import 'package:flutter/material.dart';
import '../layouts/card_image_list_h.dart';
import '../layouts/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),//el primero es el fondo
        CardImageListH(
          [
            "assets/images/beach_palm.jpeg",
            "assets/images/beach.jpeg",
            "assets/images/mountain.jpeg",
            "assets/images/mountain_stars.jpeg",
            "assets/images/river.jpeg",
            "assets/images/sunset.jpeg",
          ]
        ),
      ],
    );
  }
  
}