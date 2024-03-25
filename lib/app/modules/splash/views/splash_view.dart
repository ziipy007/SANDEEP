import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../themes/app_colors.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});


  void clreaStackAndScreen(BuildContext context, Widget screen) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    controller.checkLogin();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(children: [
          const SizedBox(height: 200),
          Text(
            'ziipy',
            style: GoogleFonts.k2d(
                color: AppColors.whiteColor,
                fontSize: 95,
                fontWeight: FontWeight.w800),
          ),
          const SizedBox(height: 15),
          SizedBox(
              height: 350,
              width: 350,
              child: Image.asset('assets/splash_logo.png')),
        ]),
      ),
    );
  }
}
