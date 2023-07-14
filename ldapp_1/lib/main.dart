import 'package:flutter/material.dart';
import 'package:ldapp_1/pages/home_page.dart';
import 'package:ldapp_1/pages/login_page.dart';
import 'package:ldapp_1/pages/signup_page.dart';

void main(){

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' :(context)=>LoginPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        // brightness: Brightness.dark,
      ),
    )
  );
}
