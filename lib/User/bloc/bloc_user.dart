import 'package:firebase_auth/firebase_auth.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/model/user.dart';
import 'package:platzi_trips_app/User/repository/auth_repository.dart';
import 'package:platzi_trips_app/User/repository/cloud_firestore_repository.dart';

import '../../Place/model/place.dart';

class UserBloc implements Bloc {

  final _authRepository = AuthRepository();
  
  // flujo de datos (stream)
  // stream - firebase
  // streamController

  Stream<User?> streamFireBase = FirebaseAuth.instance.authStateChanges();
  Stream<User?> get authStatus => streamFireBase;
  

  // casos de uso
  //  1. sigh in aplicacion con google
  Future<User?> signIn(){
    return _authRepository.signInFirebase();
  }

  // 2. sign out a la cuenta de gmail
  void signOut(){
    _authRepository.signOut();
  }

  // 3. registrar usuario en base de datos
  final _cloudFirestoreRepository = CloudFirestoreRepository();

  void updateUserData(UserModel usuario) => _cloudFirestoreRepository.updateUserDataFirestore(usuario);
  
  // 4. actualizacion de la informacion de un visita
  Future<void> updatePlaceData(PlaceModel lugar) => _cloudFirestoreRepository.updatePlaceData(lugar);



  @override
  void dispose() {
    // TODO: implement dispose

  }


}