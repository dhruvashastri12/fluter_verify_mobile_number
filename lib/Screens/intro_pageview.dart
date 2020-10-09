import 'package:flutter/material.dart';

class IntroPageview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image(image: AssetImage('assets/images/intro_1.png')),
        Positioned(
          top: 390,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Buy a Farm Land',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
        Positioned(
          bottom: 80,
          child: Row(
            children: [
              Text('F',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800)),
              Text('    A    R    M',
                  style: TextStyle(
                      color: Color(0XFF404040),
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800))
            ],
          ),
        ),
        Positioned(left: 20, bottom: 5, child: PageviewButton('Skip')),
        Positioned(right: 20, bottom: 5, child: PageviewButton('Next'))
      ],
    );
  }
}

class Page2Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image(image: AssetImage('assets/images/intro_2.png')),
        Positioned(
          top: 390,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Grow Profitable Trees',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
        Positioned(
          bottom: 80,
          child: Row(
            children: [
              Text('F',
                  style: TextStyle(
                      color: Color(0XFF404040),
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800)),
              Text('    A',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800)),
              Text('    R    M',
                  style: TextStyle(
                      color: Color(0XFF404040),
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800))
            ],
          ),
        ),
        Positioned(left: 20, bottom: 5, child: PageviewButton('Skip')),
        Positioned(right: 20, bottom: 5, child: PageviewButton('Next'))
      ],
    );
  }
}

class Page3Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image(image: AssetImage('assets/images/intro_3.png')),
        Positioned(
          top: 390,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'A Weekend Retreat',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
        Positioned(
          bottom: 80,
          child: Row(
            children: [
              Text('F    A',
                  style: TextStyle(
                      color: Color(0XFF404040),
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800)),
              Text('    R',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800)),
              Text('    M',
                  style: TextStyle(
                      color: Color(0XFF404040),
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800))
            ],
          ),
        ),
        Positioned(left: 20, bottom: 5, child: PageviewButton('Skip')),
        Positioned(right: 20, bottom: 5, child: PageviewButton('Next'))
      ],
    );
  }
}

class Page4Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image(image: AssetImage('assets/images/intro_4.png')),
        Positioned(
          top: 390,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'We Manage it for you',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
        Positioned(
          bottom: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('F    A    R',
                  style: TextStyle(
                      color: Color(0XFF404040),
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800)),
              Text('    M',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.w800)),
            ],
          ),
        ),
        Positioned(right: 20, bottom: 5, child: PageviewButton('Done'))
      ],
    );
  }
}

class PageviewButton extends StatelessWidget {
  final String btnText;

  PageviewButton(this.btnText);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: Color(0XFFFDCA44),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        btnText,
        style: TextStyle(color: Color(0XFF231F20), fontSize: 20.0),
      ),
      onPressed: () {
        debugPrint('button clicked');
      },
    );
  }
}
