import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: VerifyMobileNum(),
    );
  }
}

class VerifyMobileNum extends StatefulWidget {
  @override
  _VerifyMobileNumState createState() => _VerifyMobileNumState();
}

class _VerifyMobileNumState extends State<VerifyMobileNum> {
  String strPhoneNum;
  final phoneNumEditingController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    phoneNumEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Verify Phone Nuber')),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter your phone number to receive a validation code',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0),
              ),
              SizedBox(height: 50.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [Text('+91'), Text('INDIA')],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Container(
                      child: TextField(
                        showCursor: true,
                        autofocus: true,
                        controller: phoneNumEditingController,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ],
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(hintText: 'Phone Number'),
                        onChanged: (val) {
                          strPhoneNum = val;
                          debugPrint('strPhoneNum: $strPhoneNum');
                        },
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              RaisedButton(
                  child: Text(
                    "Verify Me",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(35.0, 15.0, 35.0, 15.0),
                  onPressed: () {
                    debugPrint('Verify PhoneNum: $strPhoneNum');
                    try {
                      SystemChannels.textInput.invokeMapMethod('TextInput.hide');
                    } on Exception catch (e) {
                      print(e.runtimeType);
                    }
                  })
            ],
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
