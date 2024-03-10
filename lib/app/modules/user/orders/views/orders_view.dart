// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zippy_user/app/modules/user/orders/controllers/orders_controllers.dart';
import 'package:get/get.dart';
import 'package:zippy_user/app/modules/user/orders/model/order_model.dart';

import '../../../../mixins/utility_mixins.dart';
import '../../../../themes/app_colors.dart';

class OrdersView extends GetView<OrdersController> with UtilityMixin {
  OrdersView({super.key});

  List<OrdersList> ordersLists = getOrderList();

  static List<OrdersList> getOrderList() {
    const data = [
      {
        'orderDate': 'Mon 12 Dec 2023',
        'totalParcel': '10',
        'parcelPrice': '125',
        'userImage': 'assets/order_user.png',
        'userName': 'Aakash Kukadiya',
        'deliverFrom': 'Ghogha Circle, Bhavnagar',
        'deliverFromTime': '3:15 pm',
        'deliverTo': 'Kaliyabid , Bhavnagar',
        'deliverToTime': '3:45 pm',
      },
      {
        'orderDate': 'Wed 12 Nov 2023',
        'totalParcel': '5',
        'parcelPrice': '450',
        'userImage': 'assets/order_user.png',
        'userName': 'Uday Reddy',
        'deliverFrom': 'Agola Circle, Surat',
        'deliverFromTime': '4:45 pm',
        'deliverTo': 'A1 Layout, Ahmeddabad',
        'deliverToTime': '1:05 pm',
      },
      {
        'orderDate': 'Mon 12 Dec 2023',
        'totalParcel': '5',
        'parcelPrice': '350',
        'userImage': 'assets/order_user.png',
        'userName': 'Jigar Prajapati',
        'deliverFrom': 'Sector 4C, Gandhinagar',
        'deliverFromTime': '3:15 pm',
        'deliverTo': 'Surendranagar',
        'deliverToTime': '1:05 pm',
      },
      {
        'orderDate': 'Fri 14 Dec 2022',
        'totalParcel': '15',
        'parcelPrice': '700',
        'userImage': 'assets/order_user.png',
        'userName': 'Naitik Patel',
        'deliverFrom': 'Halvad Chokdi',
        'deliverFromTime': '2:32 pm',
        'deliverTo': 'Vasna, Ahmeddabad',
        'deliverToTime': '5:55 pm',
      },
      {
        'orderDate': 'Mon 12 Dec 2020',
        'totalParcel': '10',
        'parcelPrice': '500',
        'userImage': 'assets/order_user.png',
        'userName': 'Jay Goswami',
        'deliverFrom': 'Kothrud, Pune',
        'deliverFromTime': '4:15 pm',
        'deliverTo': 'Chandlodiya, Ahmeddabad',
        'deliverToTime': '8:55 pm',
      },
    ];
    return data.map<OrdersList>(OrdersList.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        surfaceTintColor: AppColors.whiteColor,
        flexibleSpace: Container(
          height: 100,
          padding: const EdgeInsets.fromLTRB(18, 25, 10, 0),
          decoration: BoxDecoration(color: AppColors.whiteColor, boxShadow: [
            BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 5,
                color: AppColors.blackColor.withOpacity(0.2)),
          ]),
          child: Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.of(context);
                },
                child: Icon(Icons.arrow_back_ios,
                    color: const Color(0xFFE41515).withOpacity(0.65)),
              ),
              const SizedBox(width: 12),
              Text(
                'My Orders',
                style: GoogleFonts.poppins(
                    color: const Color(0xFFE41515).withOpacity(0.65),
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              )
            ],
          ),
        ),
      ),
      body: Expanded(child: orders_list(ordersLists)),
    );
  }

  Widget orders_list(List<OrdersList> totalOrders) =>
      NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      }, child: ListView.builder(
        itemCount: totalOrders.length,
        itemBuilder: (context, index) {
          final orders = totalOrders[index];
          return Container(
            height: 230,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(-2, -2),
                      blurRadius: 4,
                      color: AppColors.blackColor.withOpacity(0.1)),
                  BoxShadow(
                      offset: const Offset(2, 2),
                      blurRadius: 4,
                      color: AppColors.blackColor.withOpacity(0.1)),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      orders.orderDate,
                      style: GoogleFonts.poppins(
                          color: AppColors.blackColor.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 11),
                    ),
                    Text(
                      'Total Parcel-${orders.totalParcel}',
                      style: GoogleFonts.poppins(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(orders.userImage),
                              fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      orders.userName,
                      style: GoogleFonts.poppins(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 15.3),
                    ),
                    const Spacer(),
                    Text(
                      'Rs.${orders.parcelPrice}',
                      style: GoogleFonts.poppins(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.5),
                    ),
                    const SizedBox(width: 12)
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: SizedBox(
                          height: 100,
                          width: 15,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 17),
                                child:
                                    Image.asset('assets/track.png', height: 50),
                              ),
                              Positioned(
                                top: 3,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0XFF3A955E)),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                child: Container(
                                  height: 15,
                                  width: 15,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0XFFBC101A)),
                                ),
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(orders.deliverFrom,
                              style: GoogleFonts.poppins(
                                  color: AppColors.blackColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                          Text(
                            orders.deliverFromTime,
                            style: GoogleFonts.poppins(
                                color: AppColors.blackColor.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 11),
                          ),
                          const SizedBox(height: 35),
                          Row(
                            children: [
                              Text(orders.deliverTo,
                                  style: GoogleFonts.poppins(
                                      color: AppColors.blackColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.5)),
                              const Spacer(),
                              Text('Completed',
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xFFE41515)
                                          .withOpacity(0.65),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13)),
                            ],
                          ),
                          Text(
                            orders.deliverToTime,
                            style: GoogleFonts.poppins(
                                color: AppColors.blackColor.withOpacity(0.5),
                                fontWeight: FontWeight.w400,
                                fontSize: 11),
                          )
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
