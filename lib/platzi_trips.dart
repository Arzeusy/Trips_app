import 'package:flutter/material.dart';
import 'package:platzi_trips_app/home_trips.dart';
import 'package:platzi_trips_app/profile_user.dart';
import 'package:platzi_trips_app/search_trips.dart';

class PlatziTrips extends StatefulWidget {
  const PlatziTrips({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTripsState();
  }



}


class _PlatziTripsState extends State<PlatziTrips>{
  
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileUser(),
    HomeTrips(),
    HomeTrips(),
  ];
  int _indextap = 0;

  void onTapTapped (int index){
    setState(() {
      _indextap = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return  Scaffold(
      body: widgetsChildren[_indextap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor:  Colors.purple
        ),
        child: BottomNavigationBar(
          unselectedItemColor: Color.fromARGB(255, 186, 186, 186),
          selectedItemColor: Colors.purple,
          onTap: onTapTapped,
          currentIndex: _indextap,
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
      ),
    );


  }
}