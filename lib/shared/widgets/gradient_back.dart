import 'package:flutter/material.dart';

class GradienBack extends StatelessWidget {
  
  String title = "Popular";
  double? heightGradient = 0.0;

  GradienBack(this.title, this.heightGradient, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context){
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidht = MediaQuery.of(context).size.width;

    heightGradient ??= screenHeight;

    return Container(
      width: screenWidht,
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
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          FittedBox(
            fit: BoxFit.none,
            alignment: Alignment(-1.5,-0.8),
            child: Container(
              width: screenHeight,
              height: screenHeight,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                borderRadius: BorderRadius.circular(screenHeight / 2),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontFamily: "Lato",
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          
        ],
      ) 
      //alignment: const Alignment(-0.9, -0.6),
    );
  }

}