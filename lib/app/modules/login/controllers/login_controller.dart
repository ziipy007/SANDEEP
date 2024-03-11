import 'package:get/get.dart';
import 'package:zippy_user/app/global_widgets/zippy_snackbar.dart';
import 'package:zippy_user/app/routes/app_pages.dart';

import '../../../data/repository/login_repository.dart';

class LoginController extends GetxController {
  AuthRepository repository;

  LoginController({required this.repository});

  final loading = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> onOtpSend(String mobile, countryCode) async {
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
