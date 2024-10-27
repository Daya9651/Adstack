import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }


  void navigateToNextScreen() async {
    // Simulate a splash screen delay
    await Future.delayed(const Duration(seconds: 3));
      Get.offNamed(ApplicationPages.dashboardScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/Adstacks.png');
    return Text("Welcome to AdStack ");
  }
}
