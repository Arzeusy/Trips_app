import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image_list.dart';
import 'package:platzi_trips_app/gradient_back.dart';


class HeaderAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Stack(
      children: [
        Container(
          height: 308.0,
          decoration: const BoxDecoration(color: Colors.white)
        ),
        GradienBack("Popular"),
        CardImageList()
      ],
    );

  }
}