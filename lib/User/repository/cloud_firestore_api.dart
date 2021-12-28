import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trips_app/User/model/user.dart';

class CloudFirestoreAPI{

  final String usersCollection = "users";
  final String placesCollection = "places";

  final FirebaseFirestore _db = FirebaseFirestore.instance;

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





}