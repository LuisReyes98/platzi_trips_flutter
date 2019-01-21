import 'package:flutter/material.dart';
import 'package:platzi_trips_app/layouts/floating_action_button_green.dart';

class InfoCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    final infoCard = Container(
      height: 100.0,
      width: 250.0,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(
            "Una enorme playa"
            ,
            style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
              fontSize: 20

            ),
          ),
          Text(

            "Adipisicing anim exercitation minim reprehenderit."
            ,
              style: TextStyle(
              
                fontFamily: 'Lato',
                fontWeight: FontWeight.w100,
                fontSize: 12,
                color: Colors.grey              
              ),
              
          ),
          Text(
            "Pasos 123,123,123"
            ,
            style: TextStyle(
              
                fontFamily: 'Lato',
                fontWeight: FontWeight.w800,
                fontSize: 15,
                color: Color(0xFFDAA520)             
              ),

            )

        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0)
        ),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),

    );

    return Stack(
      alignment: Alignment(0.8, 1.1),
      children: <Widget>[
        infoCard,
        FloatingActionButtonGreen(),
      ],
    );
  }
  
}