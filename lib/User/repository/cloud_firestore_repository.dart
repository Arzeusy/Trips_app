import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_api.dart';

import '../../Place/model/place.dart';

class CloudFirestoreRepository {

  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(UserModel usuario) => _cloudFirestoreAPI.updateUserData(usuario);

  Future<void> updatePlaceData(PlaceModel lugar) => _cloudFirestoreAPI.updatePlaceData(lugar);

}