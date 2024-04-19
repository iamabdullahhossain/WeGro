import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wegro/features/auth/controller/firebase_authentication/firebase_auth_services.dart';
import 'package:wegro/routes/routes_name.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loadingState = false.obs;
  FirebaseAuthServices _auth = FirebaseAuthServices();

  void userSignIn(
      String userEmail, String userPassword, BuildContext context) async {
    User? user =
        await _auth.signInWithEmailAndPassword(userEmail, userPassword);

    if (user != null) {
      print("User is successfully singed In");
      Get.offNamed(RoutesName.homeScreen);
    } else {
      print("Something went wrong");
    }
  }
}
