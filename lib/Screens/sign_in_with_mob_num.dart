import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         unselectedWidgetColor: Colors.white,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: VerifyMobileNum(),
//     );
//   }
// }

class SignInWithMobileNum extends StatefulWidget {
  @override
  _SignInWithMobileNumState createState() => _SignInWithMobileNumState();
}

class _SignInWithMobileNumState extends State<SignInWithMobileNum> {
  String strPhoneNum;
  final phoneNumEditingController = TextEditingController();
  bool checkBoxValue = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    phoneNumEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0XFF75AE43),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                  child: Container(
                    height: 50.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Row(children: [
                  Text(
                    'Welcome',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 26.0, color: Colors.white),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    '<Guest>',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ]),
                SizedBox(height: 25.0),
                TextField(
                  showCursor: true,
                  cursorColor: Colors.white,
                  autofocus: true,
                  controller: phoneNumEditingController,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                  ],
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onChanged: (val) {
                    strPhoneNum = val;
                    debugPrint('strPhoneNum: $strPhoneNum');
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  showCursor: true,
                  cursorColor: Colors.white,
                  autofocus: true,
                  controller: null,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  onChanged: (val) {
                    strPhoneNum = val;
                    debugPrint('strPhoneNum: $strPhoneNum');
                  },
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20.0,
                          child: Checkbox(
                              value: checkBoxValue,
                              checkColor: Colors.white,
                              activeColor: Colors.white,
                              onChanged: (bool newValue) {
                                setState(() {
                                  checkBoxValue = newValue;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Remember',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Text(
                      'Forgot Password!',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: 25.0),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                      color: Color(0XFFFDCA44),
                      textColor: Color(0XFF231F20),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 26.0, fontWeight: FontWeight.bold),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: EdgeInsets.fromLTRB(35.0, 10.0, 35.0, 10.0),
                      onPressed: () {
                        debugPrint('Verify PhoneNum: $strPhoneNum');
                        try {
                          SystemChannels.textInput
                              .invokeMapMethod('TextInput.hide');
                        } on Exception catch (e) {
                          print(e.runtimeType);
                        }
                      }),
                ),
                Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Don\'t have an account ?',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.white)),
                        Text('Create Account',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w800)),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }
}
