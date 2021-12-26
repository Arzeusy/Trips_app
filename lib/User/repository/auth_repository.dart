import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_auth.dart';


class AuthRepository {


  final _fireBaseAuthAPI = FirebaseAuthAPI();
  Future<User?> signInFirebase() => _fireBaseAuthAPI.signIn();


  




}