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
          CardImage(pathImage: "assets/1.png", topMargin: 80.0, bottomMargin: 20.0,),
          CardImage(pathImage: "assets/2.jpg", topMargin: 80.0, bottomMargin: 20.0,),
          CardImage(pathImage: "assets/3.jpg", topMargin: 80.0, bottomMargin: 20.0,),
        ],
      ),
    );

  }

}