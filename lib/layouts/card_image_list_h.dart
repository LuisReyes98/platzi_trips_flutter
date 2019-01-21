import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageListH extends StatelessWidget {
  List<String> imagesUrl = [];

  CardImageListH(this.imagesUrl);

  List<Widget> generateCardImages(List<String> imagesPath){
    List<CardImage> cardImages = [];
    imagesPath.forEach((image) => cardImages.add(CardImage(image)));
    return cardImages;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(
          25.0
        ),
        scrollDirection: Axis.horizontal,
        children: generateCardImages(imagesUrl),
      ),
    );
  }
  
}