import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginproj/Modal/modal.dart';

class Authentication {
  FirebaseAuth _auth = FirebaseAuth.instance;

  User generate(FirebaseUser user) {
    return User(uid: user.uid);
  }

  Stream<User> get usrStrm => _auth.onAuthStateChanged.map((e) => generate(e));

  signIn(email, password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print(e.toString());
    }
  }

  void signOut() async {
    await _auth.signOut();
  }

  void register(email, password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      print('Error ! => ${e.toString()}');
    }
  }
}
