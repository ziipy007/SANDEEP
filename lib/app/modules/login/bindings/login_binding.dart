import 'package:get/get.dart';

import '../../../data/repository/login_repository.dart';
import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(repository: AuthRepository()),
    );
  }
}
