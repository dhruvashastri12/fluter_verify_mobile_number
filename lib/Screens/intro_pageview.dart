import 'package:flutter/material.dart';

class IntroPageview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF75AE43),
        body: Container(
          child: PageViewItems(),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/green_BG.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}

class PageViewItems extends StatefulWidget {
  @override
  _PageViewItemsState createState() => _PageViewItemsState();
}

class _PageViewItemsState extends State<PageViewItems> {
  PageController _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: <Widget>[Page1Item(), Page2Item(), Page3Item(), Page4Item()],
    );
  }
}

class Page1Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Center(
            child: Image(image: AssetImage('assets/images/intro_1.png'))
          ),
    );
  }
}

class Page2Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Center(child: Image(image: AssetImage('assets/images/intro_2.png'))),
    );
  }
}

class Page3Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Center(child: Image(image: AssetImage('assets/images/intro_3.png'))),
    );
  }
}

class Page4Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/intro_4.png"),
          // fit: BoxFit.cover,
        ),
      ),
      child: Container(child: PageviewButton('Done')),
    );
  }
}

class PageviewButton extends StatelessWidget {
  final String btnText;

  PageviewButton(this.btnText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Align(
          alignment: Alignment.bottomRight,
          child: FlatButton(
            color: Color(0XFFFDCA44),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Text(
              btnText,
              style: TextStyle(color: Color(0XFF231F20), fontSize: 20.0),
            ),
            onPressed: () {
              debugPrint('done clicked');
            },
          )),
    );
  }
}
