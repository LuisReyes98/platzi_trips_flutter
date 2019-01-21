import 'package:flutter/material.dart';
import '../layouts/stars_score.dart';
import '../layouts/like_icon_button.dart';

class Review extends StatelessWidget {

  final String pathImage;
  final String name;
  final String details;
  final String commment;
  final int stars;
  bool liked;

  Review(this.pathImage,this.name,this.details,this.commment,this.stars,this.liked);

  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        commment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        ),
      ),

    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7)

        ),
      ),
    );

    final userReview = Row(
      children: <Widget>[
        userInfo,
        new StarsScore(stars, 12.0)
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17.0,

        ),
      ),
    );


    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userReview,
        userComment,

      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );
    
    final heartIcon = Container(
      
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(100.0),


      ),
      margin: EdgeInsets.only(
        top: 3.0,
        right: 3.0,

      ),
      
      child:LikeIconButton(liked), 
     
    );

    return Container(
      padding: EdgeInsets.only(
        bottom: 6.0,
      ),
      margin: EdgeInsets.only(
        top: 10.0,
        left: 5.0,
        right: 5.0
      ),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.all(
          Radius.circular(10.0)
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 4.0,
            offset: Offset(0.0, 4.0)
          )
        ]
      ),
      child: Row(
        children: <Widget>[
          photo,
          userDetails,
          heartIcon

        ],
      ),
    ); 
  }
  
}