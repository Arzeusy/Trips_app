import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthAPI {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<User?> signIn() async {
    GoogleSignInAccount? _googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication? gSA = await _googleSignInAccount?.authentication;
    
    
    // ignore: unused_local_variable
     final UserCredential authResult = await _auth.signInWithCredential(GoogleAuthProvider.credential(
      idToken: gSA?.idToken,
      accessToken: gSA?.accessToken
    ));

    final User? user = authResult.user;
    
    return user;
  }


  void signOut() async{
    googleSignIn.signOut();    
    await _auth.signOut().then((value) => print("Sesion cerrada --------------------------"));
    print("sesiones cerradas");
  }


}