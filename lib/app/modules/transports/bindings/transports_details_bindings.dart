import 'package:get/get.dart';
import 'package:zippy_user/app/modules/transports/controller/transports_details_controllers.dart';

class TransportsDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransportsDetailsController>(
      () => TransportsDetailsController(),
    );
  }
}
