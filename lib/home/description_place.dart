import 'package:flutter/material.dart';
import '../layouts/stars_score.dart';
import 'review_list.dart';
import '../layouts/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  final starWidget = <Widget>[];    

  DescriptionPlace(this.namePlace,this.descriptionPlace,this.stars);
 
  

  @override
  Widget build(BuildContext context) {    

    final titleStar = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            right: 20.0,            
          ),          
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
          ),
        ),
        new StarsScore(stars,24),
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        right: 20.0,            
        left: 20.0,            
        bottom: 20.0,            
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
          fontFamily: "Lato",
        ),
        
      ),

    );

    final sectionContainer = Column(    
      crossAxisAlignment: CrossAxisAlignment.start,  
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 350.0,
            left: 20.0,
            right: 20.0,            
          ),
          child: titleStar ,
        ),
        description,
        ButtonPurple("Navigate"),
        ReviewList(),
      ],
    );

    return sectionContainer;
  }
  
}