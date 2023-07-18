import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';
import 'package:health/pages/before%20login/onBoarding/introduction%20screen/intro_screen.dart';

class firstPage extends StatelessWidget {
  const firstPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Displaying the logo
            Center(
              child: Image.asset('assets/common/logo.png',
                  height: 104.h, width: 104.w),
            ),
            SizedBox(
              height: 20.h,
            ),
            // Displaying the welcome message
            Text(
              "Welcome To \n OneLook",
              style: GoogleFonts.inter(
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
                color: MyColors.Deep_Blue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.h),
            // Displaying the tagline
            Text(
              "Just take a look and take action!",
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: MyColors.Cold_grey,
              ),
            ),
            SizedBox(
              height: 180.h,
            ),
            // Displaying the button to navigate to the introduction screen
            SizedBox(
              height: 56.h,
              width: 312.w,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(MyColors.Purple_Plum),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => IntroScreen(),
                      ));
                },
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Center(
                        child: Text("Let's start",
                            style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: MyColors.white,
                            )),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(Icons.arrow_right_alt_rounded),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
