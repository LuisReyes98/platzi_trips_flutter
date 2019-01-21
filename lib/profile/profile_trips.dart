import 'package:flutter/material.dart';
import 'package:platzi_trips_app/profile/big_card_image.dart';
import 'package:platzi_trips_app/profile/header_profile.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          child:
          ListView( //esto esta por debajo
            children: <Widget>[
              BigCardImage("assets/images/beach_palm.jpeg"),
              BigCardImage("assets/images/beach_palm.jpeg"),
              BigCardImage("assets/images/beach_palm.jpeg"),
            ],
          ) ,
          margin: EdgeInsets.only(
            top: 250.0,
            bottom: 10.0,
          ),
        ),
        HeaderProfile(),
      ],
    );
  }
  
}