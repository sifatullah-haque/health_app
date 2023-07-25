import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health/constant/my_color.dart';
import 'package:health/pages/while_login/login.dart/login.dart';

class LoginSignUpConverter extends StatelessWidget {
  final Text primaryText;
  final Text buttonText;
  const LoginSignUpConverter({
    super.key,
    required this.primaryText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          primaryText.data.toString(),
          style: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: MyColors.Deep_Blue),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Login(),
            ));
          },
          child: Text(
            buttonText.data.toString(),
            style: GoogleFonts.inter(
                fontSize: 12.sp,
                color: MyColors.Purple_Plum,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
