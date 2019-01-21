import 'package:flutter/material.dart';

class StarsScore extends StatelessWidget {
  final int maxStars = 5;
  final int stars;
  final double iconSize;
  
  StarsScore(this.stars,this.iconSize);

  @override
  Widget build(BuildContext context) {
    return createStars(stars);
  }

  Widget generateStar(bool bordered){
    return Container(
      margin: EdgeInsets.only(
        top: 3.0,
        right: 3.0,            
      ),
      child: Icon(
              
        bordered ? Icons.star : Icons.star_border,
        color: Color(0xFFf2C611),
        size: iconSize,
      ),
    );

  }

  Widget createStars(int numberOfStars){
    if (numberOfStars > maxStars) {
      numberOfStars = maxStars;
    } else if(numberOfStars < 0 ){
      numberOfStars = 0;
    }
    List<Widget> showStars = [];
    List<Widget> showStarsBorder = [];
    List(numberOfStars.abs()).forEach((i) => showStars.add(generateStar(true)));
    List((numberOfStars - maxStars).abs()).forEach((i) => showStarsBorder.add(generateStar(false)));

    List<Widget> finalStars = []..addAll(showStars)..addAll(showStarsBorder);
    
    return new Row( children: finalStars);
  }
  
}