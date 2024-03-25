import 'package:get/get.dart';
import 'package:zippy_user/app/modules/otp/controllers/otp_controllers.dart';

class OTPBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OTPController>(
      () => OTPController(),
    );
  }
}
