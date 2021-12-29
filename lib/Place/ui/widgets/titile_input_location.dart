import 'package:flutter/material.dart';

class TextInputLocation extends StatelessWidget{
  
    
  final String hintText;
  final TextEditingController controller;
  final IconData iconData;

  
  const TextInputLocation({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.iconData
  }) : super(key: key);

  
  
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          fontSize: 15.0,
          fontFamily: "Lato",
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold
        ),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(iconData),
          fillColor: const Color(0xFFffffff),
          filled: true,
          border: InputBorder.none,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFffffff)),
            borderRadius: BorderRadius.all(Radius.circular(12.0))
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFffffff)),
            borderRadius: BorderRadius.all(Radius.circular(12.0))
          )

        ),
      ),

      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 15.0,
            offset: Offset(0.0, 7.0)
          )
        ]
      ),


    );
  }



}