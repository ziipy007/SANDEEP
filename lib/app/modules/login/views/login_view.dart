import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/mixins/utility_mixins.dart';
import 'package:zippy_user/app/modules/otp/view/otp_view.dart';

import '../../../themes/app_colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> with UtilityMixin {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 45,
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColors.blackColor.withOpacity(0.4)),
            child: Center(
                child: Text(
              'Skip',
              style: GoogleFonts.abhayaLibre(
                  color: AppColors.whiteColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            )),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'ziipy',
              style: GoogleFonts.k2d(
                  color: AppColors.primaryColor,
                  fontSize: 70,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(
                height: 280,
                width: 280,
                child: Image.asset('assets/login_logo.png')),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 1,
                    color: AppColors.blackColor,
                  ),
                ),
                Text(
                  'Log in or Sign up',
                  style: GoogleFonts.inter(
                      color: AppColors.blackColor.withOpacity(0.62),
                      fontSize: 14.3,
                      fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 1,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 35,
                  width: 45,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: AppColors.blackColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: AppColors.blackColor.withOpacity(0.18))),
                  child: Image.asset('assets/flag.png'),
                ),
                const SizedBox(width: 15),
                Container(
                  height: 35,
                  width: 250,
                  padding: const EdgeInsets.all(7),
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: AppColors.blackColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: AppColors.blackColor.withOpacity(0.18)),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+91',
                        style: GoogleFonts.inter(
                            color: AppColors.blackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          maxLength: 10,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            counterText: '',
                            hintText: 'Enter Your Phone number',
                            hintStyle: GoogleFonts.inter(
                                color: AppColors.blackColor.withOpacity(0.4),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 2.8),
                          ),
                          style: GoogleFonts.inter(
                              color: AppColors.blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                navigationPush(context, const OTPView());
              },
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                decoration: BoxDecoration(
                  color: const Color(0xFFF20C27),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Continue',
                    style: GoogleFonts.lato(
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.5),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  height: 1,
                  color: AppColors.blackColor.withOpacity(0.2),
                ),
                Text(
                  'OR',
                  style: GoogleFonts.inter(
                      color: AppColors.blackColor.withOpacity(0.62),
                      fontSize: 14.3,
                      height: 3,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  width: 160,
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  height: 1,
                  color: AppColors.blackColor.withOpacity(0.2),
                ),
              ],
            ),
            // const SizedBox(height: 10),
            Image.asset('assets/google.png', height: 30, width: 30),
            const Spacer(),
            Text(
              'By continuing, you agree to',
              style: GoogleFonts.abel(
                  color: AppColors.blackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'Terms of Service  |  Privacy Policy  |  Content Policy',
              style: GoogleFonts.abel(
                  color: AppColors.primaryColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
