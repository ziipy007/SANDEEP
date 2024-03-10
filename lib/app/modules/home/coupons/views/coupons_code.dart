import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zippy_user/app/mixins/utility_mixins.dart';
import 'package:zippy_user/app/modules/home/coupons/controllers/coupons_controllers.dart';

class CouponView extends GetView<CouponController> with UtilityMixin {
  const CouponView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios), onPressed: () {
              isBack(context);
            }),
        title: const Text('Coupon View'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset('assets/poster.png'),
        ),
      ),
    );
  }
}
