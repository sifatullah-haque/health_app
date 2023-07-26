import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';
import 'package:health/pages/while_login/commonWhileLogin/main_header_text.dart';
import 'package:health/pages/while_login/forgot_password/changes_done.dart';

class passwordAddress extends StatelessWidget {
  const passwordAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            children: [
              SizedBox(
                height: 60.h,
              ),
              Align(
                alignment: Alignment.topCenter,
                child: mainHeaderText(
                  text: Text(
                    "Enter a new \n password",
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Label for the password field
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Password",
                  style: GoogleFonts.inter(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColors.dark_grey,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              // Container for the password field
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    // Icon for the password field
                    icon: Padding(
                      padding: EdgeInsets.only(left: 18.0),
                      child: Icon(Icons.lock_rounded),
                    ),
                    hintText: "Enter your password",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
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

                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => changesDone(),
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Confirm password",
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
      ),
    );
  }
}
