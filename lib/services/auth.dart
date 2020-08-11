import 'package:firebase_auth/firebase_auth.dart';
import 'package:besafe_app/models/user.dart';

class AuthService{
  final FirebaseAuth _auth=FirebaseAuth.instance;

  //create user object based on firebase user
  User _userFromFirebaseUser(FirebaseUser user){
    return user!=null? User(uid: user.uid) : null;
  }


  Stream<User> get user{
    return _auth.onAuthStateChanged
      .map(_userFromFirebaseUser);

  }

  //sign in anon
  Future signInAnon() async{
    try{
      AuthResult result=await _auth.signInAnonymously();
      FirebaseUser user=result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(toString());
      return null;
    }
  }
    

  //sign in email password

  //sign in google gthub



}