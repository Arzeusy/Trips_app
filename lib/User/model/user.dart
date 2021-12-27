import 'package:flutter/material.dart';

class UserModel{
  // final Key? key;
  final String name;
  final String email;
  final String photo;

  // myfavoritePlaces

  UserModel({
    Key? key,
    required this.name,
    required this.email,
    required this.photo
  });
}