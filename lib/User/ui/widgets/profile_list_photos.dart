import 'package:flutter/material.dart';

import '../../../shared/widgets/floating_action_button_green.dart';


class ProfileListPhotos extends StatelessWidget {
  const ProfileListPhotos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    cardImagePhoto( {required String assetPath}) =>  Container(
      height: 200.0,
      width: 350.0,
      margin: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
        bottom: 70.0
      ),
      decoration:  BoxDecoration(
        image:   DecorationImage(
          fit: BoxFit.cover,
          image:  AssetImage( assetPath)
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

    detailsImage({ required String name, String? detail, String? steps})=> Stack(
      alignment: const Alignment(1.1, 1.3),
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text(name,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
                ),
              ),
              Text(detail!,
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontSize: 10.0
                ),
              ),
              Text("steps "  + steps.toString(),
                style: const TextStyle(
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold,
                  fontSize: 13.0,
                  color: Colors.amber
                ),
              )
            ],
          ),
        ),
        FloatingActionButtonGreen(iconData: Icons.favorite_border, iconData2: Icons.favorite, )

      ],
    ) ;


    cardWithDetails({required String assetPath, required String name, String? detail, String? steps}) => Stack(
      alignment: Alignment.bottomCenter,
      children: [
        cardImagePhoto( assetPath: assetPath),
        Container(
          margin: const EdgeInsets.only(bottom: 20.0),
          width: 250,
          height: 100,
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow (
                color:  Color.fromARGB(96, 133, 108, 108),
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0)
              )
            ]
          ),
          child: detailsImage( name: name, detail: detail, steps: steps),
        )
      ],
    );


    return SizedBox(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        scrollDirection: Axis.vertical,
        children: [
          cardWithDetails( assetPath: "assets/1.png", name: "Knucles mountains Range", detail: "Hiking, Water fall Hunting, Naural bath, Scenerary & Photography", steps: "123,123,123"),
          cardWithDetails( assetPath: "assets/2.jpg", name: "Knucles mountains Range", detail: "Hiking, Water fall Hunting, Naural bath, Scenerary & Photography", steps: "123,123,123"),
          cardWithDetails( assetPath: "assets/3.jpg", name: "Knucles mountains Range", detail: "Hiking, Water fall Hunting, Naural bath, Scenerary & Photography", steps: "123,123,123"),
          cardWithDetails( assetPath: "assets/1.png", name: "Knucles mountains Range", detail: "Hiking, Water fall Hunting, Naural bath, Scenerary & Photography", steps: "123,123,123"),
        ],
      ),
    );

  }
}