// ignore: unused_import
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> signIn(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return true;
  } catch (e) {
    // ignore: avoid_print
    print(e);
    return false;
  }
}

Future<bool> register(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      // ignore: avoid_print
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      // ignore: avoid_print
      print('The account already exists for that email.');
    }
    return false;
  } catch (e) {
    // ignore: avoid_print
    print(e.toString());
    return false;
  }
}
