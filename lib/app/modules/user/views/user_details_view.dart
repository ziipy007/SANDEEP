import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';
import 'package:zippy_user/app/modules/user/orders/views/orders_view.dart';

import '../../../mixins/utility_mixins.dart';
import '../../../themes/app_colors.dart';
import 'upper_case.dart';

class UserDetailsView extends GetView<HomeController> with UtilityMixin {
  UserDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        // leading: IconButton(
        //     icon: const Icon(Icons.arrow_back_ios),
        //     onPressed: () {
        //       isBack(context);
        //     }),
        toolbarHeight: 50,
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.maxFinite,
              padding: const EdgeInsets.only(left: 15, top: 20),
              decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(50))),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    const Icon(
                      Icons.close,
                      color: AppColors.whiteColor,
                      size: 25,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Close',
                      style: GoogleFonts.inter(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.5),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                color: AppColors.whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 53,
                          width: 53,
                          margin: const EdgeInsets.fromLTRB(10, 20, 12, 10),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/frame_pic.png'))),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10),
                            Text(
                              'Vivek',
                              style: GoogleFonts.inter(
                                  color: AppColors.blackColor.withOpacity(0.6),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.3),
                            ),
                            Text('Kesarwani',
                                style: GoogleFonts.inter(
                                  color: AppColors.blackColor.withOpacity(0.6),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.3,
                                )),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 13, vertical: 8),
                          margin: const EdgeInsets.fromLTRB(0, 10, 15, 0),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(25)),
                          child: Text(
                            'Edit',
                            style: GoogleFonts.inter(
                                color: AppColors.whiteColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: DottedLine(
                        dashLength: 5,
                        dashGapLength: 6,
                        lineThickness: 1.7,
                        dashColor: Color(0xff3B65DB),
                        dashGapColor: Colors.transparent,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        navigationPush(context, OrdersView());
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        color: AppColors.whiteColor,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset('assets/orders.png',
                                height: 25, width: 25),
                            const SizedBox(width: 12),
                            Text(
                              'Orders',
                              style: GoogleFonts.inter(
                                  color: AppColors.blackColor.withOpacity(0.75),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.5),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.blackColor.withOpacity(0.75),
                              size: 18,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/history.png',
                              height: 25, width: 25),
                          const SizedBox(width: 12),
                          Text(
                            'History',
                            style: GoogleFonts.inter(
                                color: AppColors.blackColor.withOpacity(0.75),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.5),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.blackColor.withOpacity(0.75),
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/payments.png',
                              height: 25, width: 25),
                          const SizedBox(width: 12),
                          Text(
                            'Payments',
                            style: GoogleFonts.inter(
                                color: AppColors.blackColor.withOpacity(0.75),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.5),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.blackColor.withOpacity(0.75),
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/help.png', height: 25, width: 25),
                          const SizedBox(width: 12),
                          Text(
                            'Help',
                            style: GoogleFonts.inter(
                                color: AppColors.blackColor.withOpacity(0.75),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.5),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.blackColor.withOpacity(0.75),
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/policy.png',
                              height: 25, width: 25),
                          const SizedBox(width: 12),
                          Text(
                            'Policy',
                            style: GoogleFonts.inter(
                                color: AppColors.blackColor.withOpacity(0.75),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.5),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.blackColor.withOpacity(0.75),
                            size: 18,
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: const Color(0xfFF9FAFF),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 15),
                          Icon(
                            Icons.logout,
                            color: AppColors.blackColor.withOpacity(0.75),
                            size: 20,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Logout',
                            style: GoogleFonts.inter(
                                color: AppColors.blackColor.withOpacity(0.75),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.5),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.blackColor.withOpacity(0.75),
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                      child: DottedLine(
                        dashLength: 5,
                        dashGapLength: 6,
                        lineThickness: 1.7,
                        dashColor: Color(0xff3B65DB),
                        dashGapColor: Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 20, 20),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 105,
                  width: 105,
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/user_pic.png'))),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: Container(
                          height: 33,
                          width: 33,
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFFC4C4C4)),
                          child: Image.asset('assets/camera.png'),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  'User details',
                  style: GoogleFonts.inter(
                      color: const Color(0xFF232323),
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
                Text(
                  'Userr details to enjoy the feature of Ziipy',
                  style: GoogleFonts.inter(
                      color: const Color(0xFF969696),
                      fontWeight: FontWeight.w400,
                      fontSize: 16.5),
                ),
                const SizedBox(height: 30),
                SizedBox(
                    height: 50,
                    child: TextField(
                       keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Your Name',
                        labelStyle: GoogleFonts.inter(
                            color: const Color(0xFF9A9A9A),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff367AFF)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                const SizedBox(height: 12),
                SizedBox(
                    height: 50,
                    child: TextField(
                       keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Firm Name',
                        labelStyle: GoogleFonts.inter(
                            color: const Color(0xFF9A9A9A),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff367AFF)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                const SizedBox(height: 12),
                SizedBox(
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Mobile No,',
                        labelStyle: GoogleFonts.inter(
                            color: const Color(0xFF9A9A9A),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff367AFF)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                const SizedBox(height: 12),
                SizedBox(
                    height: 50,
                    child: TextField(
                      inputFormatters: [
                        UpperCaseTextFormatter(),
                      ],
                      decoration: InputDecoration(
                        labelText: 'GST No.',
                        labelStyle: GoogleFonts.inter(
                            color: const Color(0xFF9A9A9A),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff367AFF)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                const SizedBox(height: 12),
                SizedBox(
                    height: 50,
                    child: TextField(
                      inputFormatters: [
                        UpperCaseTextFormatter(),
                      ],
                      decoration: InputDecoration(
                        labelText: 'PAN No.',
                        labelStyle: GoogleFonts.inter(
                            color: const Color(0xFF9A9A9A),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff367AFF)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                const SizedBox(height: 12),
                SizedBox(
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email Id',
                        labelStyle: GoogleFonts.inter(
                            color: const Color(0xFF9A9A9A),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff367AFF)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                const SizedBox(height: 12),
                SizedBox(
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Address',
                        labelStyle: GoogleFonts.inter(
                            color: const Color(0xFF9A9A9A),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff367AFF)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                const SizedBox(height: 12),
                SizedBox(
                    height: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Pin code',
                        labelStyle: GoogleFonts.inter(
                            color: const Color(0xFF9A9A9A),
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                        enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFD9D9D9)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff367AFF)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                Container(
                  height: 55,
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Submit',
                      style: GoogleFonts.inter(
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.5),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
