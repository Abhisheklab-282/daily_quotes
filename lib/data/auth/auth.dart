import 'package:firebase_auth/firebase_auth.dart';

class Auth{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUpWithEmailAndPassword ( String email, String password) async{

    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e){
      print("Something went wrong");

    }
    return null;

  }

  Future<User?> logInWithEmailAndPassword ( String email, String password) async{

    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e){
      print("Something went wrong");

    }
    return null;

  }
}
