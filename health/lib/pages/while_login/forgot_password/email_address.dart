import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';
import 'package:health/pages/while_login/commonWhileLogin/main_header_text.dart';
import 'package:health/pages/while_login/forgot_password/password_address.dart';

class EmailAddress extends StatelessWidget {
  const EmailAddress({super.key});

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
              const mainHeaderText(
                text: Text("Enter your e-mail"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "You will receive a link to confirm the password change to the e-mail address provided",
                style: TextStyle(
                  color: MyColors.dark_grey,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Email",
                  style: GoogleFonts.inter(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: MyColors.dark_grey,
                  ),
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
                      builder: (context) => passwordAddress(),
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Confirm e-mail",
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
