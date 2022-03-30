import 'package:calculator/languages/language.dart';
import 'package:calculator/pages/calc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/auth/sign_in.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
   
    return ScreenUtilInit(

      designSize: Size(490, 1090),
      builder: ()=>GetMaterialApp(
        
        translations: Language(),
        locale: Locale('en_US'),
        fallbackLocale: Locale('en_US'),
        debugShowCheckedModeBanner: false,
        title: 'Calculator',
        theme: ThemeData(
          textTheme:
              GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply()),
          primarySwatch: Colors.blue,
        ),
        home: SignUp(),
      ),
    );
  }
}
