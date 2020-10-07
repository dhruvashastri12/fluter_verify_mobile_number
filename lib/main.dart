import 'package:fluter_verify_mobile_number/Screens/activities_list_item.dart';
import 'package:fluter_verify_mobile_number/Screens/intro_pageview.dart';
import 'package:fluter_verify_mobile_number/Screens/navigation_drawer.dart';
import 'package:fluter_verify_mobile_number/Screens/sign_in_with_mob_num.dart';
import 'package:fluter_verify_mobile_number/Screens/sign_up..dart';
import 'package:fluter_verify_mobile_number/Screens/verify_otp.dart';
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
      home: ScreenStack(),
    );
  }
}

class ScreenStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
            color: Color(0XFFFDCA44),
            textColor: Color(0XFF231F20),
            child: Text(
              "Sign In",
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInWithMobileNum(),
                  ));
            }
        ),
        SizedBox(height: 15.0,),
        RaisedButton(
            color: Color(0XFFFDCA44),
            textColor: Color(0XFF231F20),
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUp(),
                  ));
            }
        ),
        SizedBox(height: 15.0,),
        RaisedButton(
            color: Color(0XFFFDCA44),
            textColor: Color(0XFF231F20),
            child: Text(
              "Verify OTP",
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => VerifyOTP(),
                  ));
            }
        ),
        SizedBox(height: 15.0,),
        RaisedButton(
            color: Color(0XFFFDCA44),
            textColor: Color(0XFF231F20),
            child: Text(
              "Navigation Drawer",
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavDrawerHomePage(),
                  ));
            }
        ),
        SizedBox(height: 15.0,),
        RaisedButton(
            color: Color(0XFFFDCA44),
            textColor: Color(0XFF231F20),
            child: Text(
              "Activity List Item",
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ActivitiesListItem(),
                  ));
            }
        ),
        SizedBox(height: 15.0,),
        RaisedButton(
            color: Color(0XFFFDCA44),
            textColor: Color(0XFF231F20),
            child: Text(
              "Intro Pageview",
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => IntroPageview(),
                  ));
            }
        ),
        SizedBox(height: 15.0,)

      ],
    );
  }
}
