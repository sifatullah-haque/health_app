// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/my_color.dart';

class inputField extends StatelessWidget {
  const inputField({
    super.key,
    required TextEditingController nameController,
    required TextEditingController passwordController,
  }) : _nameController = nameController, _passwordController = passwordController;

  final TextEditingController _nameController;
  final TextEditingController _passwordController;

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
              "Create an account",
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
        Text(
          "Full Name",
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: MyColors.dark_grey,
          ),
        ),
        SizedBox(height: 20.h),
        // Container for the name field
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              // Icon for the name field
              icon: Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Icon(Icons.sensor_occupied_rounded),
              ),
              hintText: "Enter your username",
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        //lebel for the email field
        Text(
          "Email",
          style: GoogleFonts.inter(
            fontSize: 13.sp,
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
            controller: _nameController,
            decoration: const InputDecoration(
              // Icon for the email field
              icon: Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Icon(Icons.email_rounded),
              ),
              hintText: "Enter your email",
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ),
        SizedBox(height: 20.h),
        // Label for the password field
        Text(
          "Password",
          style: GoogleFonts.inter(
            fontSize: 13.sp,
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
            controller: _passwordController,
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
      ],
    );
  }
}
