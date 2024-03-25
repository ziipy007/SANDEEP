// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/modules/delivery_boy/controllers/delivery_boy_controllers.dart';
import 'package:get/get.dart';

import '../../../mixins/utility_mixins.dart';
import '../../../themes/app_colors.dart';

class DeliveryBoyView extends GetView<DeliveryBoyController> with UtilityMixin {
  DeliveryBoyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              isBack(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        title: const Text('DeliveryBoy'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Container(
              height: 35,
              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Center(
                child: Text(
                  'You have just saved 20 with this coupon',
                  style: GoogleFonts.kameron(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.payments_rounded,
                  color: AppColors.blackColor,
                  size: 24,
                ),
                const SizedBox(width: 5),
                Text(
                  'Payment |  ',
                  style: GoogleFonts.kameron(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
                Image.asset(
                  'assets/discount.png',
                  height: 20,
                  width: 20,
                ),
                const SizedBox(width: 5),
                Text(
                  'ZIIPYNEW',
                  style: GoogleFonts.kameron(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
                Container(
                  height: 13,
                  width: 1,
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  color: AppColors.blackColor,
                ),
                Image.asset('assets/person.png', height: 20, width: 20),
                const SizedBox(width: 5),
                Text(
                  'Customer details',
                  style: GoogleFonts.kameron(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ],
            ),
            Container(
              height: 35,
              width: 200,
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: AppColors.blackColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  'Book Any',
                  style: GoogleFonts.kameron(
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15.5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
