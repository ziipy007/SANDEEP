// ignore_for_file: must_be_immutable, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/modules/home/category/category.dart';
import 'package:zippy_user/app/modules/home/transports/transports.dart';

import '../../../themes/app_colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});

  List<CategoryList> categoryLists = getCategoryList();

  static List<CategoryList> getCategoryList() {
    const data = [
      {'categoryName': 'Cloths', 'categoryImage': 'assets/cloths.png'},
      {'categoryName': 'Glass', 'categoryImage': 'assets/glass.png'},
      {'categoryName': 'Wood', 'categoryImage': 'assets/wood.png'},
      {'categoryName': 'Books', 'categoryImage': 'assets/books.png'},
      {'categoryName': 'Plastic', 'categoryImage': 'assets/plastic.png'},
      {'categoryName': 'Documents', 'categoryImage': 'assets/documents.png'},
      {'categoryName': 'Fridge', 'categoryImage': 'assets/fridge.png'},
      {'categoryName': 'Dry Fruit', 'categoryImage': 'assets/dry_fruits.png'},
    ];
    return data.map<CategoryList>(CategoryList.fromJson).toList();
  }

  List<TransportsList> transportsLists = getTransportsList();

  static List<TransportsList> getTransportsList() {
    const data = [
      {
        'transportImage': 'assets/transport_3.jpg',
        'transportName': 'Ramesh Transport',
        'parcelType': 'Electronics Parcel',
        'transportMessage':
            'Ziipy funds environmental projects to offset offset delivery carbon footprint',
        'oneParcelFees': '₹100 for one',
        'rating': '4.3'
      },
      {
        'transportImage': 'assets/transports_1.png',
        'transportName': 'Anu Transport',
        'parcelType': 'Computer & Laptop Parcel',
        'transportMessage':
            'Ziipy funds environmental projects to offset offset delivery carbon footprint',
        'oneParcelFees': '₹150 for one',
        'rating': '4.2'
      },
      {
        'transportImage': 'assets/transports_2.png',
        'transportName': 'Ishar Transport',
        'parcelType': 'Cloths Parcel',
        'transportMessage':
            'Ziipy funds environmental projects to offset offset delivery carbon footprint',
        'oneParcelFees': '₹150 for one',
        'rating': '4.0'
      },
    ];
    return data.map<TransportsList>(TransportsList.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        toolbarHeight: 62,
        leadingWidth: 0,
        title: Container(
          margin: const EdgeInsets.only(top: 10),
          height: 40,
          decoration: BoxDecoration(
              color: const Color(0xffD9D9D9).withOpacity(0.7),
              borderRadius: BorderRadius.circular(50)),
          child:  TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 3.2),
                border: InputBorder.none,
                 hintText: 'Search Location',
                  hintStyle: GoogleFonts.abhayaLibre(
                      color: AppColors.blackColor.withOpacity(0.5),
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                prefixIcon: const Icon(Icons.location_on)),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 10),
            child: Image.asset(
              'assets/translation.png',
              height: 30,
              width: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: Image.asset(
              'assets/user.png',
              height: 27,
              width: 27,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              height: 40,
              decoration: BoxDecoration(
                  color: const Color(0xffD9D9D9),
                  borderRadius: BorderRadius.circular(50)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(top: 3),
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
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/poster.png'),
            ),
            Text(
              'WHAT’S ON YOUR MIND?',
              style: GoogleFonts.josefinSans(
                  color: const Color(0xFF817070),
                  fontWeight: FontWeight.w400,
                  fontSize: 15),
            ),
            const Divider(color: Color(0xFF817070)),
            const SizedBox(height: 10),
            SizedBox(height: 240, child: category_list(categoryLists)),
            Container(
              height: 30,
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 0.8,
                      color: AppColors.blackColor.withOpacity(0.4))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'See more',
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(width: 5),
                  const Icon(Icons.keyboard_arrow_down,
                      color: AppColors.blackColor, size: 15)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    '100 Transporter around you',
                    style: GoogleFonts.adamina(
                        color: AppColors.blackColor,
                        fontSize: 17.5,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down,
                    color: Colors.transparent),
              ],
            ),
            const SizedBox(height: 20),
            transport_list(transportsLists)
          ],
        ),
      ),
    );
  }

  Widget category_list(List<CategoryList> totalCategory) =>
      NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowIndicator();
            return true;
          },
          child: GridView.builder(
            shrinkWrap: false,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 20),
            itemCount: totalCategory.length,
            itemBuilder: (context, index) {
              final categories = totalCategory[index];
              return Column(
                children: [
                  SizedBox(
                    height: 75,
                    width: 75,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(categories.categoryImage),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(categories.categoryName,
                      style: GoogleFonts.inter(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 13)),
                ],
              );
            },
          ));

  Widget transport_list(List<TransportsList> totalTransports) =>
      NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: totalTransports.length,
          itemBuilder: (context, index) {
            final transports = totalTransports[index];
            return Container(
              height: 320,
              width: double.maxFinite,
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(transports.transportImage),
                          fit: BoxFit.fitWidth,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 120,
                      width: double.maxFinite,
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(-1, 1),
                              blurRadius: 3,
                              color: AppColors.blackColor.withOpacity(0.3),
                            )
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    transports.transportName,
                                    style: GoogleFonts.adamina(
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.5),
                                  ),
                                  Text(
                                    transports.parcelType,
                                    style: GoogleFonts.adamina(
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 17,
                                    width: 45,
                                    margin: const EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xFF2B7D0F),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          transports.rating,
                                          style: GoogleFonts.publicSans(
                                              color: AppColors.whiteColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(width: 3),
                                        const Icon(Icons.star,
                                            color: AppColors.whiteColor,
                                            size: 12)
                                      ],
                                    ),
                                  ),
                                  Text(
                                    transports.oneParcelFees,
                                    style: GoogleFonts.adamina(
                                        color: AppColors.blackColor,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/environment.png',
                                  height: 25, width: 25),
                              const SizedBox(width: 7),
                              Flexible(
                                child: Text(
                                  transports.transportMessage,
                                  overflow: TextOverflow.clip,
                                  maxLines: 2,
                                  style: GoogleFonts.adamina(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 11.5),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Row(
                                children: [
                                  Image.asset('assets/arrow.png',
                                      height: 20, width: 20),
                                  const SizedBox(width: 7),
                                  Image.asset('assets/max_safety.png',
                                      height: 36, width: 80)
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
}
