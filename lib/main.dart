import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wegro/features/auth/presentation/screens/login_screen/login_screen.dart';
import 'package:wegro/features/auth/presentation/screens/registration_screen/registration_screen.dart';
import 'package:wegro/routes/app_routes.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'WeGro',
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.appRoutes(),
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: LoginScreen(),
    );
  }
}


