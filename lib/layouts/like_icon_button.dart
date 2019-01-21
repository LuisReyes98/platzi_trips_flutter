import 'package:flutter/material.dart';

class LikeIconButton extends StatefulWidget {
  bool liked;
  
  LikeIconButton(this.liked);

  @override
  State<StatefulWidget> createState() {
    return _LikeIconButton(liked);
  }
  
}

class _LikeIconButton extends State<LikeIconButton>{
  bool _liked;

  _LikeIconButton(this._liked);

  void onPressedLike(){
    setState(() {
      _liked = !this._liked;
    });

    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: _liked ? Text("Te gusta el comentario") : Text("Ya no te gusta el comentario"),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressedLike,
        icon: Icon(
          _liked ? Icons.favorite : Icons.favorite_border,
          // color: _liked ? Color(0xFFFF0000) : Colors.black,          
        ),          
        color: _liked ? Color(0xFFFF0000) : Colors.black ,  
        highlightColor: _liked ? Color(0xFFFF0000) : Colors.black,
        splashColor: _liked ? Color(0xFFFF0000) : Colors.black ,        
        iconSize: 24,
      );
  }

}