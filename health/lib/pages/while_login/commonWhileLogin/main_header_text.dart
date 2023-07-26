import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';

class mainHeaderText extends StatelessWidget {
  final Text text;
  const mainHeaderText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.data.toString(),
      style: GoogleFonts.inter(
        fontSize: 30.sp,
        fontWeight: FontWeight.w700,
        color: MyColors.Deep_Blue,
      ),
      textAlign: TextAlign.center,
    );
  }
}
