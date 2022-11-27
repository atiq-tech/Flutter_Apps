import 'package:firebase_auth/firebase_auth.dart';

class FbHelper {
  signUp(email, password) async {
    try {
      UserCredential _userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User? authCredential = _userCredential.user;
      if (authCredential!.uid.isNotEmpty) {
        return "Got the data";
      } else {
        return "Not the data here Actually";
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {}
  }
}
