import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';

import '../../common_elements/button.dart';
import 'checkbox_field.dart';
import 'input_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // Create controllers for the name and password fields
    TextEditingController _nameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              inputField(
                  nameController: _nameController,
                  passwordController: _passwordController),
              SizedBox(height: 20.h),
              //tick box
              const checkBox(),
              SizedBox(height: 20.h),
              // Login button
              const button(
                text: Text("Sign up"),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(children: <Widget>[
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: const Divider(
                        color: MyColors.light_grey,
                        height: 36,
                      )),
                ),
                const Text("OR"),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: const Divider(
                        color: MyColors.light_grey,
                        height: 36,
                      )),
                ),
              ]),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/while_login/google.png",
                    height: 50.h,
                    width: 50.w,
                  ),
                  SizedBox(
                    width: 32.w,
                  ),
                  Image.asset(
                    "assets/while_login/fb.png",
                    height: 50.h,
                    width: 50.w,
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.inter(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: MyColors.Deep_Blue),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: GoogleFonts.inter(
                          fontSize: 12.sp,
                          color: MyColors.Purple_Plum,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
