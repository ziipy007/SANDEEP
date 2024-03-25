import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransportsDetailsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final count = 0.obs;

  void increment() => count.value++;

  late TabController controller;

  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Full Category'),
    const Tab(text: 'Electronics'),
    const Tab(text: 'Clothes'),
    const Tab(text: 'Glass'),
  ];

  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
