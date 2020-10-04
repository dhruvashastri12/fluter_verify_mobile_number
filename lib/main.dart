import 'package:fluter_verify_mobile_number/Screens/navigation_drawer.dart';
import 'package:fluter_verify_mobile_number/Screens/sign_in_with_mob_num.dart';
import 'package:fluter_verify_mobile_number/Screens/sign_up..dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        unselectedWidgetColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SignInWithMobileNum(),
      // home: SignUp(),
      home: NavDrawerHomePage(),
    );
  }
}