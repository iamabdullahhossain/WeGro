
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wegro/features/auth/controller/firebase_authentication/firebase_auth_services.dart';
import 'package:wegro/routes/routes_name.dart';

class RegistrationController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;
  RxBool loadingState = false.obs;
  FirebaseAuthServices _auth = FirebaseAuthServices();

  void userSignUp(String userEmail, String userPassword, BuildContext context) async {
    User? user =
        await _auth.signUpWithEmailAndPassword(userEmail, userPassword);

    if (user != null) {
      print("User is successfully created");
      Get.offNamed(RoutesName.loginScreen);
    } else {
      print("Something went wrong");
    }
  }

  void getback(){
    Get.back();
}

}
