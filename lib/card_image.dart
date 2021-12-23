import 'package:flutter/material.dart';


class CardImage extends StatelessWidget {
  
  String pathImage;
  
  CardImage(this.pathImage, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){

    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: const EdgeInsets.only(
        top: 80.0,
        left: 20.0,
        bottom: 20.0
      ),
      decoration:  BoxDecoration(
        image:   DecorationImage(
          fit: BoxFit.cover,
          image:  AssetImage( pathImage)
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

    return card;
    
  }
}