import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/model/user.dart';

class PlaceModel{
  // final Key? key;
  final String id;
  final String name;
  final String description;
  final String urlImage;
  final int? likes;
  final UserModel? userOwner;

  // myfavoritePlaces

  PlaceModel({
    Key? key,
    required this.id,
    required this.name,
    required this.description,
    required this.urlImage,
    this.likes,
    this.userOwner,
  });


}