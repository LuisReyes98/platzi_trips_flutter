import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home/home_trips.dart';
import 'profile/profile_trips.dart';
import 'search/search_trips.dart';


class PlatziTripsCupertino extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _PlatziTripsCupertino();
  }

}

class _PlatziTripsCupertino extends State<PlatziTripsCupertino>{
  int currentIndex = 0;
  
  void onTapTapped(int index){
    setState(() {
      currentIndex = index;         
    });
  }
 
  @override
  Widget build(BuildContext context) {


    final scaff =  Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          onTap: onTapTapped,
          //backgroundColor: Colors.transparent,
          backgroundColor: Color(0x99FFFFFF),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home, 
                    color: currentIndex == 0 ? Colors.purple : Colors.indigo
                  ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search, 
                    color: currentIndex == 1 ? Colors.purple : Colors.indigo
                  ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person, 
                    color: currentIndex == 2 ? Colors.purple : Colors.indigo
                  ),
              ),
            ]
      ),
      tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(                
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
              break;

          }

        },
      )
    );


  return scaff;
  }
  
}