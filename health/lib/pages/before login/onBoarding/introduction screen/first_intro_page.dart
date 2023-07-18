import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';

class FirstIntroPage extends StatelessWidget {
  const FirstIntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: MyColors.Violet_light,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 90.0,
                left: 30.0,
                right: 30.0,
              ),
              child: Image.asset(
                "assets/before_login/intro_first.png",
                height: 300.h,
                width: 300.w,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              "Keep calm and stay \n in control",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: MyColors.Deep_Blue,
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "You can check your health with just one \n look.",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: MyColors.Cold_grey,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
