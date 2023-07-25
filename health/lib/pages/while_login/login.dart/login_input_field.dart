import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';

class loginInputField extends StatelessWidget {
  const loginInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title of the page
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Align(
            alignment: Alignment(0, 0),
            child: Text(
              "Welcome back",
              style: GoogleFonts.inter(
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
                color: MyColors.Deep_Blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 25.h),
        // Label for the name field
        //lebel for the email field
        Text(
          "Email",
          style: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: MyColors.dark_grey,
          ),
        ),
        SizedBox(height: 20.h),
        // Container for the email field
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
              // Icon for the email field
              icon: const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Icon(Icons.email_rounded),
              ),
              hintText: "Enter your email",
              hintStyle: TextStyle(
                fontSize: 13.sp,
                color: MyColors.dark_grey,
                fontWeight: FontWeight.w400,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        // Label for the password field
        Text(
          "Password",
          style: GoogleFonts.inter(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: MyColors.dark_grey,
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
            decoration: InputDecoration(
              // Icon for the password field
              icon: const Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Icon(Icons.lock_rounded),
              ),
              hintText: "Enter your password",
              hintStyle: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: MyColors.dark_grey,
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
}
