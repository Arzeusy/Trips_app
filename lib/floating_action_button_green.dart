import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloaingActionButtonGreenState();



  }
}


class _FloaingActionButtonGreenState extends State<FloatingActionButtonGreen>{
  
  bool favState = false;
  
  void onPressedFav (){
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Agregaste a tus favoritos"),
      )
    );
    setState(() {
      favState = !favState;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return  FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
        favState ? Icons.favorite : Icons.favorite_border
      ),
      onPressed: onPressedFav,
    );

  }


  
}