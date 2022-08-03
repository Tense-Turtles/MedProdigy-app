// ignore: unused_import
// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<bool> signIn(String email, String password) async {
  try {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    return true;
  } catch (e) {
    print(e);
    return false;
  }
}

// get data from registerpage to firestore
bool register(String email, String password, String name, String age,
    String phoneNumber) {
  try {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            // name: name,
            // age: age,
            // phoneNumber: phoneNumber,
            email: email,
            password: password)
        .then((value) => {
              FirebaseFirestore.instance
                  .collection('user')
                  .doc(value.user!.uid)
                  .set({
                "email": value.user!.email,
                "phoneNumber": value.user!.phoneNumber,
                // 'name': value.user!.uid.name,
                // 'age': value.user!.uid.age,
              })
            });
    return true;
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
    return false;
  } catch (e) {
    print(e.toString());
    return false;
  }
}

Future resetPass(String email) async {
  try {
    return await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } catch (e) {
    print(e.toString());
  }
}
