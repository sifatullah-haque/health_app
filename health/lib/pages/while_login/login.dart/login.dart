import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health/constant/my_color.dart';
import 'package:health/pages/common_elements/button.dart';
import 'package:health/pages/while_login/commonWhileLogin/divider.dart';
import 'package:health/pages/while_login/commonWhileLogin/google_Fb_Logo.dart';
import 'package:health/pages/while_login/commonWhileLogin/login_signup_converter.dart';
import 'package:health/pages/while_login/forgot_password/email_address.dart';

import 'login_input_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                const loginInputField(),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => EmailAddress(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(
                        color: MyColors.Purple_Plum,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  const button(
                    text: Text("Login"),
                  ),
                  const divider(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const googleFbLogo(),
                  SizedBox(
                    height: 20.h,
                  ),
                  const LoginSignUpConverter(
                    primaryText: Text("Don’t have an account yet?"),
                    buttonText: Text("Sign Up"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
