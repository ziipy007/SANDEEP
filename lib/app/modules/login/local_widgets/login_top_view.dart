import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../themes/app_colors.dart';

class LoginTopView extends StatelessWidget {
  const LoginTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        Text(
          'ziipy',
          style: GoogleFonts.k2d(
              color: AppColors.primaryColor,
              fontSize: 70,
              fontWeight: FontWeight.w800),
        ),
        const SizedBox(height: 25),
        Image.asset('assets/login_logo.png').paddingSymmetric(horizontal: 45),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 1,
              color: AppColors.blackColor,
            )),
            Text(
              'Log in or Sign up',
              style: GoogleFonts.inter(
                  color: AppColors.blackColor.withOpacity(0.62),
                  fontSize: 14.3,
                  height: 2,
                  fontWeight: FontWeight.w400),
            ),
            Expanded(
                child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 1,
              color: AppColors.blackColor,
            )),
          ],
        ),
        const SizedBox(height: 25),

      ],
    );
  }
}
