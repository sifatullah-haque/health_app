import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constant/my_color.dart';

class checkBox extends StatefulWidget {
  const checkBox({
    super.key,
  });

  @override
  State<checkBox> createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isClicked,
          onChanged: (value) {
            if (value == true) {
              setState(() {
                isClicked = true;
              });
            }
            isClicked;
          },
          activeColor:
              MyColors.Deep_Blue, // custom color when checkbox is clicked
        ),
        Text(
          "I agree to the ",
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: MyColors.dark_grey,
          ),
        ),
        Text(
          "Terms and Conditions",
          style: GoogleFonts.inter(
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            color: MyColors.Deep_Blue,
          ),
        ),
      ],
    );
  }
}
