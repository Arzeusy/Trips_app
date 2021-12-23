import 'package:flutter/material.dart';
import 'package:platzi_trips_app/button.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/rating.dart';
import 'package:platzi_trips_app/review_list.dart';

// ignore: must_be_immutable
class DescriptionPlace extends StatelessWidget{
    String namePlace = "Duwali Ella";
    int stars;
    String description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  
  DescriptionPlace(this.namePlace, this.stars, this.description, {Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context){

    
    final starIconHalf = Container(
      margin: const  EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );

    final starIconEmpthy = Container(
      margin: const  EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final starIcon = Container(
      margin: const  EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
        bottom: 20.0
      ),
      child: Text(
        this.description,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          fontFamily: "Lato",
          color: Colors.black54
        ),
      ),
    );

    final titleStars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top:320.0, left: 20.0, right: 20.0),
          child:  Text(
            namePlace,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 323.0
          ),
          child: Row(
          children: [
            Rating(3.5, 3.0, 25.0)
          ],
        ),
        )
      ],
    );

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          titleStars,
          description,
          Button("Navigate"),
          ReviewList(key: UniqueKey())
        ],
        
      ),
    );
  }
}