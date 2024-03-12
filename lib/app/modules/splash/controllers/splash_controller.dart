import 'package:get/get.dart';
import 'package:zippy_user/app/data/provider/local/hive_constant.dart';
import 'package:zippy_user/app/routes/app_pages.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    checkLogin();
  }

  Future<void> checkLogin()async{
    String? token= HiveConstants.getAuthToken();
    await Future.delayed(const Duration(seconds: 3));
    if(token==null||token.isEmpty){
      Get.offAllNamed(Routes.HOME);
    }else{
      Get.offAllNamed(Routes.LOGIN);
    }
  }

}
