import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/model/place.dart';

class UserModel{
  // final Key? key;
  final String uid;
  final String name;
  final String email;
  final String photoURL;
  final List<PlaceModel>? myPlaces;
  final List<PlaceModel>? myFavoritePlaces;


  UserModel({
    Key? key,
    required this.uid,
    required this.name,
    required this.email,
    required this.photoURL,
    this.myPlaces,
    this.myFavoritePlaces
  });
}