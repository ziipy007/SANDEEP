import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../themes/app_colors.dart';
import '../controllers/otp_verification_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpVerificationView extends GetView<OtpVerificationController> {
  const OtpVerificationView({super.key});

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
                      "${controller.countryCode}-",
                      style: GoogleFonts.inter(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                    Text(
                      controller.mobile,
                      style: GoogleFonts.inter(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            OtpTextField(
              numberOfFields: 6,
              borderColor: AppColors.primaryColor,
              showFieldAsBox: true,

              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
                controller.validCode(code.trim().length == 6);
                if (code.trim().length == 6) {
                  controller.verifyOtp(code);
                }
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {}, // end onSubmit
            ),
            const Spacer(),
            Obx(() => controller.timeRemaining.value > 0
                ? Text(
                    "${controller.timeRemaining.value} Second",
                    style: GoogleFonts.abrilFatface(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  )
                : const SizedBox.shrink()),
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
                const SizedBox(width: 8),
                InkWell(
                    onTap: () => controller.onOtpSend(),
                    child: Obx(() => Text(
                          'Resend now',
                          style: GoogleFonts.actor(
                            color: controller.timeRemaining.value > 0
                                ? const Color(0xffC4C4C4)
                                : null,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ))),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
