import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platzi_trips_app/shared/widgets/floating_action_button_green.dart';


class CardImage extends StatelessWidget {
  
  final String pathImage;
  final double height;
  final double width;
  final VoidCallback? onPressFabIcon;
  final IconData iconData;
  final IconData iconData2;
  double leftMargin;
  double topMargin ;
  double bottomMargin ;


  CardImage( {
    Key? key, 
    this.pathImage = "assets/img/beach.jpeg",
    this.height = 350.0,
    this.width = 250.0,
    this.leftMargin = 20.0,
    this.topMargin = 0.0,
    this.bottomMargin = 0.0,
    this.onPressFabIcon,
    this.iconData = Icons.favorite_border,
    this.iconData2 = Icons.favorite
  }) : super(key: key);


  @override
  Widget build(BuildContext context){

    final card = Container(
      height: height,
      width: width,
      margin:  EdgeInsets.only(
        top: topMargin,
        left: leftMargin,
        bottom: bottomMargin
      ),
      decoration:  BoxDecoration(
        image:   DecorationImage(
          fit: BoxFit.cover,
          image: pathImage.contains("assets") ?  AssetImage( pathImage): FileImage(File(pathImage)) as ImageProvider
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
           BoxShadow (
            color:  Colors.black38,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      )
    );

    return Stack(
      alignment: const Alignment(1.0, 1.0),
      children: [
        card,
        FloatingActionButtonGreen(iconData: iconData, iconData2: iconData2, onPressed: onPressFabIcon,)
      ],
    );
    
  }
}