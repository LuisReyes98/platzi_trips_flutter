import 'package:flutter/material.dart';


class FloatingActionButtonGreen extends StatefulWidget{  
  @override
  State<StatefulWidget> createState() {


    return _FloatingActionButtonGreen();
  }
  
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool _pressed = false;

  void onPressedFav(){
    setState(() {
      _pressed = !this._pressed;
    });
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: _pressed ? Text("Agregado a tus Favoritos") : Text("Removido de tus Favoritos"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Favorito",
      onPressed: onPressedFav,
      child: Icon(
        this._pressed ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}