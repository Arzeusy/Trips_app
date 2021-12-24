import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  double stars;
  double marginLeft;
  double fontSize;
  
  
  Rating( this.stars, this.marginLeft, this.fontSize, {Key? key}) : super(key: key);

  Widget getStar(double star) {
    var icon = Icons.star;

    if (star >= 1){
      icon = Icons.star;
    } else if (star >=  0.5 && star < 1) {
      icon = Icons.star_half;
    } else {
      icon = Icons.star_border;
    }
    return Container(
      margin: const EdgeInsets.only(right: 3.0),
      child: Icon(
        icon,
        color: const Color(0xFFf2C611),
        size: fontSize,
      ),
    );
  }

  Widget getRating(double stars) {
    List<Widget> list = [];

    for (var n = 0; n < 5; n++) {
      list.add(getStar(stars));
      stars--;
    }
    return Container(
      margin: EdgeInsets.only(left: marginLeft),
      child: Row(
        children: list,
      ),
    );
  }
  
  @override
  Widget build(BuildContext context){
    return getRating(stars);
  }
}