import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginproj/Modal/modal.dart';

class Authentication {
  FirebaseAuth _auth = FirebaseAuth.instance;

  User generate(user) {
    return User(uid: user.id);
  }

  Stream get usrStrm => _auth.onAuthStateChanged.map((e) => generate(e));

  void signIn(email, password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  void signOut() async {
    await _auth.signOut();
  }
}
