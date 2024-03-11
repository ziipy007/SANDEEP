import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/mixins/utility_mixins.dart';
import 'package:zippy_user/app/modules/login/local_widgets/login_button.dart';
import 'package:zippy_user/app/modules/login/otp/view/otp_view.dart';
import 'package:zippy_user/app/utils/validators/app_validations.dart';

import '../../../themes/app_colors.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> with UtilityMixin {
  LoginView({super.key});

  final TextEditingController mobileController = TextEditingController();
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
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
        child: Form(
          key: formState,
          child: Column(
            children: [
              Text(
                'ziipy',
                style: GoogleFonts.k2d(
                    color: AppColors.primaryColor,
                    fontSize: 80,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                  height: 320,
                  width: 320,
                  child: Image.asset('assets/login_logo.png')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 1,
                    color: AppColors.blackColor,
                  ),
                  Text(
                    'Log in or Sign up',
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor.withOpacity(0.62),
                        fontSize: 14.3,
                        height: 2,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    width: 110,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 1,
                    color: AppColors.blackColor,
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
                          child: TextFormField(
                            maxLength: 10,
                            controller: mobileController,
                            keyboardType: TextInputType.number,
                            validator: AppValidator.validateMobile,
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
              Obx(() => LoginButtonView(
                  isLoading: controller.loading.value,
                  onClick: () {
                    if (formState.currentState!.validate()) {
                      controller.onOtpSend(mobileController.text.trim(), "+91");
                    }
                  })),
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
      ),
    );
  }
}
