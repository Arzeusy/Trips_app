import 'package:flutter/material.dart';
import 'package:platzi_trips_app/shared/widgets/gradient_back.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_header.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_list_photos.dart';

class ProfileUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        GradienBack("Profile", 350.0),
        Column(
          children: [
            ProfileHeader("assets/back1.jpeg"),
            ProfileListPhotos()
          ],
        )
      ],
    );
  }

}