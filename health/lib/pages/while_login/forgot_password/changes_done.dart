import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';
import 'package:health/pages/while_login/login.dart/login.dart';

class changesDone extends StatelessWidget {
  const changesDone({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Align(
              alignment: Alignment(0, 0),
              child: Image.asset(
                "assets/while_login/password.png",
                height: 300.h,
                width: 300.w,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Your password has\n been changed",
              style: GoogleFonts.inter(
                color: MyColors.Deep_Blue,
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 100.h,
            ),
            SizedBox(
              height: 56.h,
              width: 312.w,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyColors.Purple_Plum),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ))),
                onPressed: () {
                  // Navigate to the home page

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: GoogleFonts.inter(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: MyColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
