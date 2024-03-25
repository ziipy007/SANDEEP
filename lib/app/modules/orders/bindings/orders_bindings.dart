import 'package:get/get.dart';
import 'package:zippy_user/app/modules/orders/controllers/orders_controllers.dart';

class OrdersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrdersController>(
      () => OrdersController(),
    );
  }
}
