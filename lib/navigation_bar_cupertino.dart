import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/Place/ui/screens/home_trips.dart';
import 'package:platzi_trips_app/User/ui/screens/profile_user.dart';
import 'package:platzi_trips_app/Search/ui/screens/search_trips.dart';

class NavigationBarCuperttino extends StatelessWidget {
  const NavigationBarCuperttino({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return CupertinoTabScaffold(
     tabBar: CupertinoTabBar(
       items: const [
          BottomNavigationBarItem(
              icon: Icon( Icons.home),
              label: ""
            ),
             BottomNavigationBarItem(
              icon: Icon( Icons.search),
              label: ""
            ),
             BottomNavigationBarItem(
              icon: Icon( Icons.person),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon( Icons.notifications),
              label: ""
            ),
            BottomNavigationBarItem(
              icon: Icon( Icons.pin_drop_sharp),
              label: ""
            ),
       ],
     ),
     tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => SearchTrips(),
            );
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => ProfileUser(),
            );
          default: return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );
        }
     }
   );
  }
}
