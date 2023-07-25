import 'package:flutter/material.dart';
import 'package:health/pages/before%20login/first_page.dart';
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
        home: firstPage(),
      ),
    );
  }
}
