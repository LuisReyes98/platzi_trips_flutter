import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  final String pathImage = "assets/images/people.jpg";
  final String name = "Luis Reyes";
  final String details = "1 review 5 photos";
  final String commment = "This place is amazing";


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review(pathImage, name, details, commment, 6,true),
        new Review(pathImage, name, details, commment, 2,false),
        new Review(pathImage, name, details, commment, 1,false),
      ],
    );
  }
  
}