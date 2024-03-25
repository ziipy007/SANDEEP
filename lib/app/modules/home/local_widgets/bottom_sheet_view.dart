import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../themes/app_colors.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        color: AppColors.whiteColor,
        child: Center(
          child: Container(
            height: 600,
            width: double.maxFinite,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.blackColor, width: 1.2),
            ),
            child: Column(
              children: [
                Text('Parcel  Detail',
                    style: GoogleFonts.inter(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 18)),
                Text('Parcel Detail Compulsory for sender',
                    style: GoogleFonts.adamina(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w400,
                        height: 2,
                        fontSize: 12.5)),
                const Divider(
                    height: 10,
                    color: AppColors.blackColor,
                    indent: 20,
                    endIndent: 20,
                    thickness: 1.2),
                const SizedBox(height: 10),
                Container(
                    height: 47,
                    margin: const EdgeInsets.only(top: 7),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Sender name',
                        labelStyle: GoogleFonts.inter(
                            color: AppColors.blackColor.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.blackColor.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                Container(
                    height: 47,
                    margin: const EdgeInsets.only(top: 7),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Sender number',
                        labelStyle: GoogleFonts.inter(
                            color: AppColors.blackColor.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.blackColor.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                Container(
                    height: 47,
                    margin: const EdgeInsets.only(top: 7),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Sender Full Address',
                        labelStyle: GoogleFonts.inter(
                            color: AppColors.blackColor.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.blackColor.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                const SizedBox(height: 12),
                const Divider(
                    height: 10,
                    color: AppColors.blackColor,
                    indent: 20,
                    endIndent: 20,
                    thickness: 1.2),
                const SizedBox(height: 10),
                Container(
                    height: 47,
                    margin: const EdgeInsets.only(top: 7),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Receiver’s name',
                        labelStyle: GoogleFonts.inter(
                            color: AppColors.blackColor.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.blackColor.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                Container(
                    height: 47,
                    margin: const EdgeInsets.only(top: 7),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Receiver’s Phone',
                        labelStyle: GoogleFonts.inter(
                            color: AppColors.blackColor.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.blackColor.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                Container(
                    height: 47,
                    margin: const EdgeInsets.only(top: 7),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Receiver’s Full Address',
                        labelStyle: GoogleFonts.inter(
                            color: AppColors.blackColor.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.blackColor.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                Container(
                    height: 47,
                    margin: const EdgeInsets.only(top: 7),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Pincode',
                        labelStyle: GoogleFonts.inter(
                            color: AppColors.blackColor.withOpacity(0.7),
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.blackColor.withOpacity(0.3)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.blackColor),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                    )),
                Container(
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
