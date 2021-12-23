import 'package:flutter/material.dart';


class ProfileHeader extends StatelessWidget {
  String pathImageProfile = "";

  ProfileHeader( this.pathImageProfile, {Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {


    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, right: 20.0),
      width: 80.0,
      height: 80.0,
      decoration:  BoxDecoration(
        border: Border.all(color: Colors.white),
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(pathImageProfile), 
          fit: BoxFit.cover
        ),
      ),
    );

    final userData = Row(
      children: [
        photo,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Arzeusy",
              style: TextStyle(
                fontFamily: "Lato",
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
                color: Colors.white
              ),
            ),
            Text(
              "jkob1994@gmail.com",
              style: TextStyle(
                fontFamily: "Lato",
                fontSize: 10.0,
                color: Color.fromARGB(99, 255, 255, 255)
              ),
            ),
          ],
        ),

      ],
    );

    userActionsButtons ({double size = 40, required String iconName }) => Container(
      margin: const EdgeInsets.only(top:10.0),
      height: size,
      width: size,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          iconName,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: 'MaterialIcons', color: Color(0xFF4268D3), fontSize: size -20, fontWeight: FontWeight.bold ),
        ) ,
      ) //Icon(  IconData(iconCode, fontFamily: 'MaterialIcons'), color: Color(0xFF4268D3) ),
    );

    final userActions = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        userActionsButtons(size: 40, iconName: 'bookmark_border'),
        userActionsButtons(size: 40, iconName: 'payment'),
        userActionsButtons(size: 60, iconName: 'add'),
        userActionsButtons(size: 40, iconName: 'drafts'),
        userActionsButtons(size: 40, iconName: 'person'),
      ],
    );

    return Container(
      margin: const EdgeInsets.only(
        top: 100.0,
        left: 20.0,
        right: 20.0,
        bottom: 20.0
      ),
      child: Column(
        children: [
          userData,
          userActions
        ],
      )
      
      
    );
  }


}