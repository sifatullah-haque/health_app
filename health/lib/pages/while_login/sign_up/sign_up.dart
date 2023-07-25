import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:health/pages/while_login/commonWhileLogin/divider.dart';

import '../../common_elements/button.dart';
import '../commonWhileLogin/google_Fb_Logo.dart';
import '../commonWhileLogin/login_signup_converter.dart';
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
              divider(),
              SizedBox(
                height: 20.h,
              ),
              googleFbLogo(),
              SizedBox(
                height: 20.h,
              ),
              const LoginSignUpConverter(
                primaryText: Text("Already have an account?"),
                buttonText: Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
