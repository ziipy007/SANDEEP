import 'package:get/get.dart';
import 'package:zippy_user/app/modules/user/controllers/users_controllers.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(
      () => UserController(),
    );
  }
}
