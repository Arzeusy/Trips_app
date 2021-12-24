import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/ui/widgets/rating.dart';


// ignore: must_be_immutable
class Review extends StatelessWidget{
  
  String pathImage =  "assets/back1.jpeg";
  String name = "Arzeusy";
  String deatils = "1 review 5 photos";
  String comment = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  Review( this.name, this.pathImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    final userComment = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child:  SizedBox(
        width: 250,
        child: Text(
          comment,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          softWrap: false,
          style: const TextStyle(
            fontSize: 13.0,
            fontFamily: "Lato",
          ),
        ),
      ) 
    );


    
    final userInfo = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 20.0
          ),
          child: Text(
            deatils,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 13.0,
              fontFamily: "Lato",
              color: Color(0xFFa3a5a7)
            ),
          ),
        ),
        Rating(4.3, 3.0, 14.0)
      ],
    );

    
    final userComponent = Container(
      margin: const EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 17.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.bold
        ),
      ),
    );



    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userComponent,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration:  BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImage), 
          fit: BoxFit.cover
        ),
      ),
    );


    return Row(
      children: [
        photo,
        userDetails
      ],
    );


  }
}