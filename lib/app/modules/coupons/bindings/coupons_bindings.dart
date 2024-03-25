import 'package:get/get.dart';
import 'package:zippy_user/app/modules/coupons/controllers/coupons_controllers.dart';

class CouponBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CouponController>(
      () => CouponController(),
    );
  }
}
