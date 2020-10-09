import 'package:flutter/material.dart';
// import 'package:step5/routes/Routes.dart';

// Reference: https://github.com/fabiomsr/Flutter-StepByStep/tree/master/step5

class NavDrawerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF75AE43),
        appBar: AppBar(title: Text('Navigation Drawer'), elevation: 0.0, backgroundColor: Color(0XFF75AE43),),
        body: Center(child: Text('My Page!')),
        drawer: AppDrawer());
  }
}

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
      color: Color(0XFF75AE43),
      child: ListView(
        padding: EdgeInsets.only(top: 30.0),
        children: [
          _createDrawerItem(
            icon: Icons.arrow_back,
            text: 'Hosachiguru',
            textSize: 24.0,
            textWeight: FontWeight.w700,
            onTap: () => () {}
            // Navigator.pushReplacementNamed(context, Routes.contacts)
            ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0, right: 40.0, bottom: 60.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: _createDrawerItem(
                        icon: Icons.contacts,
                        text: 'My Farm',
                        textSize: 20.0,
                        onTap: () => () {}
                        // Navigator.pushReplacementNamed(context, Routes.contacts)
                        ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
              _createDrawerItem(
                  icon: Icons.event, text: 'Home', textSize: 20.0, onTap: () => () {}
                  // Navigator.pushReplacementNamed(context, Routes.events)
                  ),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    child: _createDrawerItem(
                        icon: Icons.note, text: 'Activities', textSize: 20.0, onTap: () => () {}
                        // Navigator.pushReplacementNamed(context, Routes.notes)
                        ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                    child: _createDrawerItem(
                        icon: Icons.collections_bookmark, text: 'Assets', textSize: 20.0,),
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
              Row(
                children: [
                  Expanded(
                      child: _createDrawerItem(
                          icon: Icons.face, text: 'Documents', textSize: 20.0,)),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.white,
                  )
                ],
              ),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
              _createDrawerItem(icon: Icons.account_box, text: 'Monitoring', textSize: 20.0,),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
              _createDrawerItem(icon: Icons.stars, text: 'Amenities', textSize: 20.0,),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
              _createDrawerItem(icon: Icons.bug_report, text: 'Settings', textSize: 20.0,),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
              _createDrawerItem(icon: Icons.bug_report, text: 'Help', textSize: 20.0,),
              Divider(
                thickness: 2.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ]),
    ));
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Text("Flutter Step-by-Step",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500)));
  }

  // Widget _createHeader() {
  //   return DrawerHeader(
  //       margin: EdgeInsets.zero,
  //       padding: EdgeInsets.zero,
  //       // decoration: BoxDecoration(
  //       //     image: DecorationImage(
  //       //         fit: BoxFit.fill,
  //       //         image: AssetImage('res/images/drawer_header_background.png'))
  //       // ),
  //       child: Stack(children: <Widget>[
  //         Positioned(
  //             bottom: 12.0,
  //             left: 16.0,
  //             child: Text("Flutter Step-by-Step",
  //                 style: TextStyle(
  //                     color: Colors.white,
  //                     fontSize: 20.0,
  //                     fontWeight: FontWeight.w500))),
  //       ]));
  // }

  Widget _createDrawerItem(
      {IconData icon,
      String text,
      double textSize,
      FontWeight textWeight,
      GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Icon(icon),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: textSize,
                      fontWeight: textWeight),
                ),
              ),
            ],
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
