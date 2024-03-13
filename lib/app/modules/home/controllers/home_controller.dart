import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../local_widgets/bottom_sheet_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  void increment() => count.value++;

  @override
  void onInit() {
    super.onInit();
    bottomSheet();
  }

  Future <void> bottomSheet() async {
    showModalBottomSheet(context: Get.context!, builder: (builder) {
        return const BottomSheetView();
    },);
  }

}
