import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';

import '../../common_elements/button.dart';
import 'checkbox_field.dart';
import 'input_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              checkBox(),
              SizedBox(height: 20.h),
              // Login button
              button(
                text: Text("Sign up"), 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
