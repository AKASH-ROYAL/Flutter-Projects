import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sign_up_page/main.dart';
import 'package:sign_up_page/other_pages/Account.dart';
import 'package:sign_up_page/other_pages/change_password.dart';

import 'package:sign_up_page/other_pages/forget_password.dart';
import 'package:sign_up_page/other_pages/header_widget.dart';
import 'package:sign_up_page/other_pages/login.dart';
import 'package:sign_up_page/other_pages/otp.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sign_up_page/other_pages/sign_up.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
      routes: {
        '/login':(context)=>Login(),
        '/sign_up':(context)=>Sign_up(),
        '/forget_page':(context)=>forgetpage(),
        '/otp_page':(context)=>otpPage(),
        '/change_pass_page':(context)=>changePass()
      },
      theme: ThemeData(
        textTheme:TextTheme(

        ),
          iconTheme: IconThemeData(
            color: Color(0xff36517e)
          ),

          primarySwatch: Colors.indigo,
       // scaffoldBackgroundColor: Color(0xff36517e)

         ),
       ));
}





