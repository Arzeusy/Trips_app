import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platzi_trips_app/Place/model/place.dart';
import 'package:platzi_trips_app/User/model/user.dart';

class CloudFirestoreAPI{

  final String usersCollection = "users";
  final String placesCollection = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> updateUserData( UserModel usuario){
    DocumentReference ref = _db.collection(usersCollection).doc(usuario.uid);
    return ref.set({
      "uid": usuario.uid,
      "name": usuario.name,
      "email": usuario.email,
      "photoURL": usuario.photoURL,
      "myPlaces": usuario.myPlaces,
      "myFavoritePlaces": usuario.myFavoritePlaces,
      "lastSignIn": DateTime.now(),
    }, SetOptions(merge: true)
    );

  }

  Future<void> updatePlaceData(PlaceModel lugar) async {
    CollectionReference refPlaces = _db.collection(placesCollection);

    // ignore: unused_local_variable
    User usuario = _auth.currentUser!;

    await refPlaces.add({
      'name': lugar.name,
      'description': lugar.description,
      'likes': lugar.likes,
      'userOwner': "$usersCollection/${usuario.uid}",
      'urlImage': lugar.urlImage 
    });

  }



}