import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:wegro/features/auth/controller/login_controller/login_controller.dart';
import 'package:wegro/resources/colors/black.dart';
import 'package:wegro/resources/colors/primary_color.dart';
import 'package:wegro/resources/image_location/icon_location.dart';
import 'package:wegro/routes/routes_name.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController controller = LoginController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "WeGro",
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
                    labelText: "Enter Your Email",
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
                    labelText: "Enter Your Password",
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
                    controller.userSignIn(controller.emailController.value.text,
                        controller.passwordController.value.text, context);
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Black.dark100),
                  child: Text("Login"),
                )),
            Gap(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?  ",
                  style: TextStyle(color: Black.dark100),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(RoutesName.registrationScreen);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: PrimaryColor.primary100),
                  ),
                )
              ],
            ),
            Gap(20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10, left: 20),
                    child: const Divider(
                      color: Black.dark50,
                      height: 1,
                    ),
                  ),
                ),
                Text(
                  "Or",
                  style: const TextStyle(color: Black.dark100),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 20),
                    child: const Divider(
                      color: Black.dark50,
                      height: 1,
                    ),
                  ),
                )
              ],
            ),
            Container(
              width: screenWidth,
              height: 60,
              margin: EdgeInsets.only(top: 15, left: 15, right: 15),
              child: OutlinedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      IconLocation.google,
                      height: 38,
                      width: 38,
                    ),
                    Gap(10),
                    Text(
                      "Continue with Google",
                      style: TextStyle(color: Black.dark100, fontSize: 16),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
