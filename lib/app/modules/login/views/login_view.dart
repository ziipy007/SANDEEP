import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/mixins/utility_mixins.dart';
import 'package:zippy_user/app/modules/login/local_widgets/login_button.dart';
import 'package:zippy_user/app/utils/validators/app_validations.dart';
import '../../../themes/app_colors.dart';
import '../controllers/login_controller.dart';
import '../local_widgets/login_top_view.dart';

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
        child: Form(
          key: formState,
          child: Column(
            children: [
              const LoginTopView(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 30),
                  Container(
                    height: 40,
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
                  Expanded(
                    child: Container(
                      height: 40,
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.all(5),
                      // margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: AppColors.blackColor.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                            color: AppColors.blackColor.withOpacity(0.18)),
                      ),
                      child: TextFormField(
                        maxLength: 10,
                        autofocus: false,
                        controller: mobileController,
                        keyboardType: TextInputType.number,
                        validator: AppValidator.validateMobile,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          border: InputBorder.none,
                          counterText: '',
                          hintText: 'Enter Your Phone number',
                          hintStyle: GoogleFonts.inter(
                              color: AppColors.blackColor.withOpacity(0.4),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                          isDense: true,
                          contentPadding: EdgeInsets.zero,
                          prefixIconConstraints: const BoxConstraints(),
                          prefixIcon: Text(
                            '+91 ',
                            style: GoogleFonts.inter(
                                color: AppColors.blackColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),

                ],
              ),
              const SizedBox(width: 10),
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
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 1,
                    color: AppColors.blackColor.withOpacity(0.2),
                  )),
                  Text(
                    'OR',
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor.withOpacity(0.62),
                        fontSize: 14.3,
                        height: 3,
                        fontWeight: FontWeight.w400),
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    height: 1,
                    color: AppColors.blackColor.withOpacity(0.2),
                  )),
                ],
              ),
              // const SizedBox(height: 10),
              IconButton(
                  onPressed: controller.signInWithGoogle,
                  icon:
                      Image.asset('assets/google.png', height: 30, width: 30)),
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
