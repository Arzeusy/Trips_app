import 'package:flutter/material.dart';

class GradienBack extends StatelessWidget {
  
  String title = "Popular";
  double heightGradient = 250.0;

  GradienBack(this.title, this.heightGradient, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context){

    return Container(
      height: heightGradient,
      decoration: const BoxDecoration(
        gradient:  LinearGradient(
          colors: [
            Color(0xFF4268D3),
            Color(0xFF584CD1),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp
        )
      ),
      child:  Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
      alignment: const Alignment(-0.9, -0.6),
    );
  }

}