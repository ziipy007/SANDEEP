import 'dart:async';

import 'package:get/get.dart';

import '../../../data/repository/login_repository.dart';
import '../../../global_widgets/zippy_snackbar.dart';
import '../../../routes/app_pages.dart';

class OtpVerificationController extends GetxController {
  AuthRepository repository;

  OtpVerificationController({required this.repository});

  final loading = false.obs;
  final validCode = false.obs;

  late String verificationId;
  late String mobile = "9039017101";
  late String countryCode = "+91";
  late Timer _timer;
  final timeRemaining = 30.obs;

  @override
  void onInit() {
    super.onInit();
    var arguments = Get.arguments;
    // verificationId = arguments['verificationId'];
    // mobile = arguments['mobile'];
    // countryCode = arguments['countryCode'];
    startTimer();
  }

  void startTimer() {
    timeRemaining(30);
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (timeRemaining.value == 0) {
          timer.cancel();
        } else {
          timeRemaining(timeRemaining.value - 1);
        }
      },
    );
  }

  Future<void> verifyOtp(String otp) async {
    loading(true);
    var response = await repository.verifyLoginOtp(
        mobile: mobile,
        countryCode: countryCode,
        otp: otp,
        vid: verificationId);
    if (response != null && response.status == 1) {
      ZippySnackbar.showErrorSnackbar("Verified");
      Get.toNamed(Routes.OTP_VERIFICATION,
          arguments: response.data?.verificationId);
    }
    if (response != null && response.status == 2) {
      ZippySnackbar.showErrorSnackbar("Verified");
      Get.toNamed(Routes.OTP_VERIFICATION,
          arguments: response.data?.verificationId);
    } else {
      ZippySnackbar.showErrorSnackbar(
          response?.msg ?? "Something went wrong, Please try again.");
    }
    loading(false);
  }

  Future<void> onOtpSend() async {
    startTimer();
    return;
    loading(true);
    var response =
        await repository.sendLoginOtp(mobile: mobile, countryCode: countryCode);
    if (response != null && response.status == 1) {
      ZippySnackbar.showErrorSnackbar("Otp sent");
      Get.toNamed(Routes.OTP_VERIFICATION, arguments: {
        'verificationId': response.data?.verificationId.toString(),
        'mobile': mobile,
        'countryCode': countryCode,
      });
    } else {
      ZippySnackbar.showErrorSnackbar(
          response?.msg ?? "Something went wrong, Please try again.");
    }
    loading(false);
  }
}
