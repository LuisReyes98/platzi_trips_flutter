import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{
  final String descriptionDummy = "Mollit incididunt elit laboris proident ea. Eiusmod excepteur velit ea ea nisi esse. Minim nisi ullamco Lorem in id sit voluptate id duis. \n Non eiusmod eiusmod exercitation nostrud enim est amet officia nisi aliqua aliqua culpa. Qui quis tempor adipisicing id commodo id minim sint et eius Proident est amet id adipisicing cillum Lorem. Aliquip pariatur nulla amet laboris nulla adipisicing minim. Ad ullamco laboris commodo nostrud et do occaecat cillum commodo aute ad labore dolor. Commodo do tempor culpa nulla elit eu reprehenderit. Consequat reprehenderit dolore ex quis ut irure commodo amet ex nisi ad. Duis anim nulla excepteur ullamco culpa.";

  @override
  Widget build(BuildContext context) {
    return  Stack(
          children: <Widget>[
            ListView( //esto esta por debajo
              children: <Widget>[
                DescriptionPlace("MI titulo",descriptionDummy, 3),
              ],
            ),
            HeaderAppBar(),//esto esta por encima 
          ],
        );
  }

}