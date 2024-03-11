import 'package:get/get.dart';

import '../../../data/repository/login_repository.dart';
import '../controllers/otp_verification_controller.dart';

class OtpVerificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpVerificationController>(
      () => OtpVerificationController(repository: AuthRepository()),
    );
  }
}
