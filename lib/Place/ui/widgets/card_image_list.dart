import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image.dart';

class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/1.png"),
          CardImage("assets/2.jpg"),
          CardImage("assets/3.jpg"),
        ],
      ),
    );

  }

}