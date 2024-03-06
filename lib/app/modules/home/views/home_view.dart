import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../themes/app_colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        leadingWidth: width,
        leading: Expanded(
          child: Container(
            margin: const EdgeInsets.fromLTRB(12, 12, 80, 10),
            height: 53,
            decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(50)),
            child: const TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.location_on)),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/translation.png',
              height: 30,
              width: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              'assets/user.png',
              height: 30,
              width: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            height: 40,
            decoration: BoxDecoration(
                color: const Color(0xffD9D9D9),
                borderRadius: BorderRadius.circular(50)),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(bottom: 8),
                border: InputBorder.none,
                hintText: 'Search Transport',
                hintStyle: GoogleFonts.abhayaLibre(
                    color: AppColors.blackColor.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.mic),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            height: 150,
            decoration: BoxDecoration(
                color: const Color(0xffF20C27),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      color: AppColors.blackColor.withOpacity(0.25))
                ]),
          ),
        ],
      ),
    );
  }
}
