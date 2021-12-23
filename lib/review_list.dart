import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';


class ReviewList extends StatelessWidget {
  
  
  ReviewList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    List<int> text = [1,2,3,4];

    return Container(
      margin:  const EdgeInsets.only(
        bottom: 20.0
      ),
      child: Column(
        children: [
          for ( var i in text ) Review("Arzeusy - " + i.toString(), "assets/back1.jpeg")
        ],
      ),
    );

  }
}