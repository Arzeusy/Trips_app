import 'package:flutter/material.dart';

class ButtonCreen extends StatefulWidget{

  final String texto;
  final VoidCallback onPressed;
  double? width = 0.0;
  double? height = 0.0;
  double? borderRadius = 30.0;
  String? iconName;

  ButtonCreen({Key? key, this.height,  this.width, required this.texto, required this.onPressed , this.borderRadius, this.iconName}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ButtonGreenState();
  }
}


class _ButtonGreenState extends State<ButtonCreen>{

  @override
  Widget build(BuildContext context) {
    
    // ignore: dead_code
    getIcon({String? iconName}){
      if (iconName != null){
        return Text(
          widget.iconName!,
          textAlign: TextAlign.center,
          style: const TextStyle(fontFamily: 'MaterialIcons', color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold ),
        );
      }
      return const Text("");
    }



    return InkWell(
        onTap: widget.onPressed ,
        child: Container(
          margin: const EdgeInsets.only(
            top: 30.0,
            left: 20.0,
            right: 20.0,
          ),
          width:  widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius != null ? widget.borderRadius! : 30.0),
            gradient: const LinearGradient(
              colors: [
                Color(0xFFa7ff84),
                Color(0xFF1cbb78),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0,0.6],
              tileMode: TileMode.clamp
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              getIcon(iconName: widget.iconName),
              Text(
                widget.texto,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Lato",
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ],
             
          ),
        ),
    );


    

  }
}