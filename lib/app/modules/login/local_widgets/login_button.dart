import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../themes/app_colors.dart';

class LoginButtonView extends StatelessWidget {
  final bool isLoading;

  final Function() onClick;

  const LoginButtonView(
      {super.key, required this.isLoading, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        height: 40,
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
        decoration: BoxDecoration(
          color: const Color(0xFFF20C27),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Continue',
            style: GoogleFonts.lato(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 14.5,
            ),
          ),
        ),
      ),
    );
  }
}
