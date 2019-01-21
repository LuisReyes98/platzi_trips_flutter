import 'package:flutter/material.dart';
import 'platzi_trips.dart';
import 'platzi_trips_cupertino.dart';
//En flutter se programa de forma declarativa

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

    
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false, //para no mostrar el banner de debug
      title: 'Platzi Trips', //titulo de task manager 
      theme: ThemeData(     
        primarySwatch: Colors.indigo,
      ),
      // home: PlatziTrips(), 
      home: PlatziTripsCupertino(), 
      
    );
  }
}



