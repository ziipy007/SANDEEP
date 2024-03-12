import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
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

  Future<void> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      var user = await FirebaseAuth.instance.signInWithCredential(credential);
      if (user.user != null && user.user?.email != null) {
        ;
        loading(true);
        var response = await repository.loginWithGoogle(
          email: user.user!.email!,
          uid: user.user!.uid,
        );
        if (response != null && response.status == 1) {
          // ZippySnackbar.showErrorSnackbar("Verified");
          Get.toNamed(Routes.OTP_VERIFICATION,
              arguments: response.data?.verificationId);
        } else if (response != null && response.status == 2) {
          // ZippySnackbar.showErrorSnackbar("Verified");
          Get.toNamed(Routes.OTP_VERIFICATION,
              arguments: response.data?.verificationId);
        } else {
          ZippySnackbar.showErrorSnackbar(
              response?.msg ?? "Something went wrong, Please try again.");
        }
        loading(false);
      } else {
        ZippySnackbar.showErrorSnackbar("Something went wrong");
      }
    } on FirebaseAuthException catch (e) {
      ZippySnackbar.showErrorSnackbar(e.toString());
    }
  }
}
