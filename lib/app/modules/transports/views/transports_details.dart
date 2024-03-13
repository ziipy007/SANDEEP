// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/modules/transports/controller/transports_details_controllers.dart';
import 'package:get/get.dart';
import 'package:zippy_user/app/themes/app_colors.dart';

import '../../../mixins/utility_mixins.dart';
import '../../delivery_boy/view/delivery_boy_view.dart';
import '../items/model/transport_items_model.dart';

class TransportsDetailsView extends GetView<TransportsDetailsController>
    with UtilityMixin {
  TransportsDetailsView({super.key});

  final TransportsDetailsController _tabController =
      Get.put(TransportsDetailsController());

   List<TransportsItem> transportsItems = getTransportsItems();

  static List<TransportsItem> getTransportsItems() {
    const data = [
      {
        'itemName': 'LED, TV Parcel',
        'itemPrice': '₹ 150 per Item',
        'itemLabel': 'Must Try',
        'itemMessage':
            '[Special in Electronics parcel] LED TV 55”......read more',
        'ratingCount': '15',
        'itemRating': '4.5',
        'itemImage': 'assets/tv.png',
      },
      {
        'itemName': 'Washing Machine Parcel',
        'itemPrice': '₹ 200 per Item',
        'itemLabel': 'Must Try',
        'itemMessage':
            '[Special in Electronics parcel] Washing machine”......read more',
        'ratingCount': '50',
        'itemRating': '4.5',
        'itemImage': 'assets/fridges.png',
      },
      {
        'itemName': 'Laptop Parcel',
        'itemPrice': '₹ 180 per Item',
        'itemLabel': 'Must Try',
        'itemMessage':
            '[Special in Electronics parcel] Locker parcel”......read more',
        'ratingCount': '25',
        'itemRating': '4.5',
        'itemImage': 'assets/box.png',
      },
    ];
    return data.map<TransportsItem>(TransportsItem.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              isBack(context);
            },
            child: const Icon(Icons.arrow_back_ios)),
        backgroundColor: AppColors.whiteColor,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 230,
              width: double.maxFinite,
              child: Column(
                children: [
                  Text(
                    'Ramesh Transport',
                    style: GoogleFonts.adamina(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                  Text(
                    'Electronics  . Clothes . Glass',
                    style: GoogleFonts.adamina(
                        color: const Color(0xff3C3636),
                        fontWeight: FontWeight.w400,
                        fontSize: 11),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 25,
                        width: 47,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xFF2B7D0F),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '4.6',
                              style: GoogleFonts.publicSans(
                                  color: AppColors.whiteColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(width: 3),
                            const Icon(Icons.star,
                                color: AppColors.whiteColor, size: 15)
                          ],
                        ),
                      ),
                      //  const SizedBox(width: 15),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                        child: Text(
                          '7.2K ratings',
                          style: GoogleFonts.adamina(
                            color: const Color(0xff3C3636),
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/clock.png', height: 13, width: 13),
                      const SizedBox(width: 5),
                      Text(
                        '20-30 min | 3.5 KM | ',
                        style: GoogleFonts.abyssinicaSil(
                            color: AppColors.blackColor,
                            fontSize: 12.5,
                            height: 3,
                            fontWeight: FontWeight.w400),
                      ),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9).withOpacity(0.35),
                            borderRadius: BorderRadius.circular(2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Motera',
                              style: GoogleFonts.abyssinicaSil(
                                  color: AppColors.blackColor,
                                  fontSize: 11.5,
                                  fontWeight: FontWeight.w400),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 20,
                              color: AppColors.blackColor.withOpacity(0.6),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 40,
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 18),
                    decoration: BoxDecoration(
                        color: const Color(0xFFFFF3FA),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 4),
                            blurRadius: 4,
                            color: AppColors.blackColor.withOpacity(0.2),
                          ),
                        ]),
                    child: TabBar(
                      indicatorWeight: 1,
                      padding: EdgeInsets.zero,
                      labelPadding: EdgeInsets.zero,
                      controller: _tabController.controller,
                      tabs: _tabController.myTabs,
                      indicatorColor: const Color(0xffB12F2F),
                      dividerColor: Colors.transparent,
                      automaticIndicatorColorAdjustment: true,
                      overlayColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      labelStyle: GoogleFonts.poppins(
                          color: const Color(0xffB12F2F),
                          fontWeight: FontWeight.w600,
                          fontSize: 12.3),
                      unselectedLabelStyle: GoogleFonts.signika(
                          color: const Color(0xffA4A0A0),
                          fontWeight: FontWeight.w400,
                          fontSize: 12.5),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Divider(height: 1, color: Color(0xffE5E5E5)),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                  controller: _tabController.controller,
                  children:  [
                    const Center(child: Text('No available')),
                    transports_item(transportsItems),
                    const Center(child: Text('No available')),
                    const Center(child: Text('No available')),
                  ]),
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          navigationPush(context, DeliveryBoyView());
        },
        child: Container(
          height: 50,
          width: double.maxFinite,
          color: const Color(0xffF20C27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total 10 item added',
                style: GoogleFonts.solway(
                    color: AppColors.whiteColor,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(width: 12),
              Image.asset('assets/forword.png', height: 20, width: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget transports_item(List<TransportsItem> totalItems) =>
      NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: ListView.builder(
            itemCount: totalItems.length,
            itemBuilder: (context, index) {
              final items = totalItems[index];

              return Container(
                height: 130,
                width: double.maxFinite,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: const EdgeInsets.only(right: 12, left: 12, top: 12),
                decoration: BoxDecoration(
                    color: const Color(0xFFF2F2F2),
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        color: AppColors.blackColor.withOpacity(0.2),
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items.itemName,
                            style: GoogleFonts.abhayaLibre(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w800,
                                fontSize: 17),
                          ),
                          Text(
                            items.itemPrice,
                            style: GoogleFonts.adamina(
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11.5),
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star,
                                  color: Color(0x5E000000), size: 15),
                              const Icon(Icons.star,
                                  color: Color(0x5E000000), size: 15),
                              const Icon(Icons.star,
                                  color: Color(0x5E000000), size: 15),
                              const Icon(Icons.star,
                                  color: Color(0x5E000000), size: 15),
                              const Icon(Icons.star,
                                  color: Color(0x5E000000), size: 15),
                              const SizedBox(width: 5),
                              Text(
                                items.ratingCount,
                                style: GoogleFonts.adamina(
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                              ),
                              Container(
                                height: 15.5,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: AppColors.whiteColor,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                        color: AppColors.primaryColor,
                                        width: 1.5),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 4),
                                        blurRadius: 7,
                                        color: AppColors.blackColor
                                            .withOpacity(0.25),
                                      ),
                                    ]),
                                child: Text(
                                  items.itemLabel,
                                  style: GoogleFonts.actor(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 9.5),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            items.itemMessage,
                            overflow: TextOverflow.clip,
                            style: GoogleFonts.adamina(
                                color: const Color(0xFF817070),
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                height: 1.5),
                          ),
                          const SizedBox(width: 12),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      children: [
                        Image.asset(
                          items.itemImage,
                          height: 70,
                        ),
                        Container(
                          height: 27,
                          width: 80,
                          padding: const EdgeInsets.symmetric(horizontal: 5.5),
                          margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                              color: const Color(0xFFFCE7EA),
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 4),
                                  blurRadius: 5,
                                  color: AppColors.blackColor.withOpacity(0.2),
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(Icons.remove,
                                  color: AppColors.primaryColor, size: 15),
                              Text(
                                'ADD',
                                style: GoogleFonts.abhayaLibre(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.5),
                              ),
                              const Icon(Icons.add,
                                  color: AppColors.primaryColor, size: 15),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ));
}
