import 'package:flutter/material.dart';

class ButtonPurple extends StatelessWidget{

  String buttonName;

  ButtonPurple(this.buttonName);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: EdgeInsets.only(
        top: 30.0,
        left: 20.0,
        right: 20.0,      
      ),
      height: 50.0,
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
            Color(0xFF8b4bcc),
            
          ],
          begin: FractionalOffset(-0.2, -1.0),
          end: FractionalOffset(1.0, 0.4),
          stops: [0.0,0.4,1.0],
          tileMode: TileMode.clamp,
        ),
      ),
      child: InkWell(
      // splashColor: Colors.yellow,        
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("Navegando"),
          )
        );
      },        
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: "Lato",
            color: Colors.white,
          ),
        ),
      ),
    ),
    );
    
  }
  
}