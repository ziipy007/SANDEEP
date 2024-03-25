import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController with GetSingleTickerProviderStateMixin {
  //TODO: Implement OrderController

  final count = 0.obs;

  void increment() => count.value++;

 late TabController controller;

 final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Completed'),
    const Tab(text: 'Cancelld'),
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
