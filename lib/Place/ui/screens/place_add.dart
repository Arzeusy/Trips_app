import 'dart:io';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/Place/ui/widgets/button.dart';
import 'package:platzi_trips_app/Place/ui/widgets/card_image.dart';
import 'package:platzi_trips_app/Place/ui/widgets/description_place.dart';
import 'package:platzi_trips_app/Place/ui/widgets/titile_input_location.dart';
import 'package:platzi_trips_app/shared/widgets/gradient_back.dart';
import 'package:platzi_trips_app/shared/widgets/text_input.dart';

import '../../../User/bloc/bloc_user.dart';


class AddPlaceScreen extends StatefulWidget{
  

  AddPlaceScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _AddPlaceScreenStatus();
  }


}


class _AddPlaceScreenStatus extends State<AddPlaceScreen>{
  
  final _controllerTitlePlace = TextEditingController();
  final _controllerDescriptionPlace = TextEditingController();
  final _controllerLocationPlace = TextEditingController();
  final File image = File("assets/grid-opacity.jpg");
  late final UserBloc _userBloc ;
  
  
  @override
  Widget build(BuildContext context) {

  try { _userBloc = BlocProvider.of(context); }  
  catch (e) { 
      print(e.toString());
  } 
  return Scaffold(
    body: Stack(
      children: [
        GradienBack("", 390.0),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 25.0, left: 5.0),
              child: SizedBox(
                height: 45.0,
                width: 45.0,
                child: IconButton(
                  icon: const Icon(Icons.keyboard_arrow_left, color: Colors.white,),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
              ),

            ),
            Container(
              padding: const EdgeInsets.only(top: 25.0, left: 5.0),
              child: SizedBox(
                child: Text("Add a new place", style: TextStyle( fontFamily: "Lato", fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),),
              ),

            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 120.0, bottom: 20.0),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(bottom: 20.0, right: 20.0, left: 20.0),
                child: CardImage(
                  leftMargin: 0.0,
                  pathImage: image.path, 
                  iconData: Icons.photo_camera_outlined, 
                  iconData2: Icons.photo_camera_outlined, 
                  height: 250.0, 
                  width: 380.0, 
                  onPressFabIcon: (){
                    print("take a picture ---------------------------------------------");
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: TextInput(
                  hintText: "Title",
                  inputType: TextInputType.name,
                  maxLines: 1,
                  controller: _controllerTitlePlace,
                ),
              ),
              TextInput(
                hintText: "Description",
                inputType: TextInputType.multiline,
                maxLines: 4,
                controller: _controllerDescriptionPlace,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: TextInputLocation(
                  hintText: "Add location",
                  iconData: Icons.location_on,
                  controller: _controllerLocationPlace,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Button("Submit", onPress: (){
                  _userBloc.updatePlaceData(PlaceModel(
                    name: _controllerTitlePlace.text,
                    description: _controllerDescriptionPlace.text,
                    likes:0,
                    id: "", 
                    urlImage: '',
                  )).whenComplete((){
                    print("Termino subir place ---------------------");
                    Navigator.pop(context);
                  });
                  //firebase storage
                  //url
                  //cloud firestore
                  print(" submit");
                }),
              )
            ],
          ),
        ),

      ],
    ),
  );
  }


}