import 'package:flutter/material.dart';
import 'package:platzi_trips_app/layouts/floating_action_button_green.dart';
import 'package:platzi_trips_app/profile/info_card.dart';

class BigCardImage extends StatelessWidget {
  String pathImage;

  BigCardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 220.0,
      width: 350.0,
      margin: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 90.0,

      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage) ,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0)
        ),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),
    
    );

    return Stack(
      alignment: Alignment(0.0, 0.9),
      children: <Widget>[
        card,
        InfoCard()
      ],
    );
  }
  
}