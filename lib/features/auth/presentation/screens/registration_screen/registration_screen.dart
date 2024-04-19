
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:wegro/features/auth/controller/registration_controller/registration_controller.dart';
import 'package:wegro/resources/colors/black.dart';
import 'package:wegro/resources/colors/primary_color.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

 // RegistrationController controller = Get.put(RegistrationController());
  RegistrationController controller = RegistrationController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          controller.getback();
        },
            icon: Icon(Icons.arrow_back_outlined, color: Colors.black,),
          ) ,
        title: Text("Sign Up", style: TextStyle(color: Colors.black),),

      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(
                  color: Black.dark100,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Gap(30),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: TextFormField(
                controller: controller.emailController.value,
                cursorColor: Black.dark100,
                decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: Black.dark100),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Black.dark100)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: TextFormField(
                controller: controller.passwordController.value,
                cursorColor: Black.dark100,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Black.dark100),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Black.dark100)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
            Container(
                height: 60,
                width: screenWidth,
                margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: ElevatedButton(
                  onPressed: () {
                  controller.userSignUp(controller.emailController.value.text, controller.passwordController.value.text, context);
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Black.dark100),
                  child: Text("Sign Up"),
                )),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?  ",
                  style: TextStyle(color: Black.dark100),
                ),
                Text(
                  "Login",
                  style: TextStyle(color: PrimaryColor.primary100),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
