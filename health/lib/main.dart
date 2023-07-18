import 'package:flutter/material.dart';
import 'package:health/pages/before%20login/onBoarding/introduction%20screen/intro_screen.dart';
import 'package:health/pages/common_elements/button.dart';
import 'package:health/pages/while_login/login_page/login_page.dart';

import 'pages/before login/first_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: LoginPage(),
      ),
    );
  }
}
