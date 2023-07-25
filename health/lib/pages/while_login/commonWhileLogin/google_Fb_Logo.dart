import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class googleFbLogo extends StatelessWidget {
  const googleFbLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
