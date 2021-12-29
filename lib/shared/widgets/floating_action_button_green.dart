import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  
  final IconData iconData;
  late final IconData? iconData2;
  final VoidCallback? onPressed;

  // final VoidCallback pressDefautl(){}

  FloatingActionButtonGreen({
    Key? key,
      this.onPressed,
      required this.iconData,
      this.iconData2,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    
    iconData2 ??= iconData;
    
    return _FloaingActionButtonGreenState();
  }
}


class _FloaingActionButtonGreenState extends State<FloatingActionButtonGreen>{
  
  bool favState = false;
  
  void onPressedFav (){
   /*  ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Agregaste a tus favoritos"),
      )
    ); */
    setState(() {
      favState = !favState;
    });
    widget.onPressed!();
  }

  @override
  Widget build(BuildContext context) {
    
    return  FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(
        favState ? widget.iconData : widget.iconData2
        // favState ? Icons.favorite : Icons.favorite_border
      ),
      onPressed: onPressedFav,
      heroTag: null,
    );

  }


  
}