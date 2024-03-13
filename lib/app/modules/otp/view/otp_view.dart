import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/modules/otp/controllers/otp_controllers.dart';
import 'package:get/get.dart';

import '../../../themes/app_colors.dart';

class OTPView extends GetView<OTPController> {
  const OTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: AppColors.whiteColor,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: Text(
          'We have sent a verification code to',
          style: GoogleFonts.inter(
              color: AppColors.blackColor,
              fontWeight: FontWeight.w400,
              fontSize: 17),
        ),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 30,
                width: 145,
                child: Row(
                  children: [
                    Text(
                      '+91-',
                      style: GoogleFonts.inter(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                    Text(
                      '9010858965',
                      style: GoogleFonts.inter(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 12),
                  margin: const EdgeInsets.only(top: 10, right: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color(0xFFC4C4C4), width: 0.8)),
                  child: TextField(
                    autofocus: true,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                    textInputAction: TextInputAction.next,
                    cursorWidth: 1.5,
                    cursorColor: AppColors.primaryColor,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      counterText: '',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 12),
                  margin: const EdgeInsets.only(top: 10, right: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color(0xFFC4C4C4), width: 0.8)),
                  child: TextField(
                    autofocus: true,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                    textInputAction: TextInputAction.next,
                     cursorWidth: 1.5,
                    cursorColor: AppColors.primaryColor,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      counterText: '',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                      
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 12),
                  margin: const EdgeInsets.only(top: 10, right: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color(0xFFC4C4C4), width: 0.8)),
                  child: TextField(
                    autofocus: true,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                    textInputAction: TextInputAction.next,
                     cursorWidth: 1.5,
                    cursorColor: AppColors.primaryColor,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      counterText: '',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 12),
                  margin: const EdgeInsets.only(top: 10, right: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color(0xFFC4C4C4), width: 0.8)),
                  child: TextField(
                    maxLength: 1,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                    textInputAction: TextInputAction.next,
                     cursorWidth: 1.5,
                    cursorColor: AppColors.primaryColor,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 12),
                  margin: const EdgeInsets.only(top: 10, right: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color(0xFFC4C4C4), width: 0.8)),
                  child: TextField(
                    maxLength: 1,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                    textInputAction: TextInputAction.next,
                     cursorWidth: 1.5,
                    cursorColor: AppColors.primaryColor,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(left: 12),
                  margin: const EdgeInsets.only(top: 10, right: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(
                          color: const Color(0xFFC4C4C4), width: 0.8)),
                  child: TextField(
                    maxLength: 1,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 22),
                    textInputAction: TextInputAction.done,
                     cursorWidth: 1.5,
                    cursorColor: AppColors.primaryColor,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                      isDense: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              '0:19 Second',
              style: GoogleFonts.abrilFatface(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 17),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn’t receive the code?',
                  style: GoogleFonts.abhayaLibre(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                const SizedBox(width: 25),
                Text(
                  'Resend now',
                  style: GoogleFonts.actor(
                    color: const Color(0xffC4C4C4),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
