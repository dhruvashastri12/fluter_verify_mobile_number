import 'package:flutter/material.dart';

class ActivitiesListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF75AE43),
      appBar: AppBar(
        title: Text('Activities List Item'),
        elevation: 0.0,
        backgroundColor: Color(0XFF75AE43), // Default light green background color
      ),
      body: ActivitiesListItemRow(),
    );
  }
}

class ActivitiesListItemRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 100,
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 230,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        color: Color(0XFF40833E), // Dark green background
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterLogo(
                                size: 40,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(9.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ListItemText('Clean Farm', Colors.white, 18, FontWeight.bold, null),
                                          GestureDetector(
                                            child: Icon(
                                              Icons.error,
                                              size: 20.0,
                                              color: Colors.white,
                                            ),
                                            onTap: () {
                                              debugPrint('info button clicked');
                                            },
                                          )
                                        ],
                                      ),
                                      ListItemText('Sandesh Farm', Colors.white, 14, FontWeight.bold, null),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ListItemText('Monthly', Colors.white, 14, FontWeight.bold, null),
                                          ListItemText('3/4 Machines', Colors.white, 14, FontWeight.bold, null),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Container(
                        height: 100,
                        color: Colors.white,
                        child: Center(
                          child: ListItemText('75%', Colors.orange, 34, FontWeight.bold, FontStyle.italic)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 5,
                    color: Colors.white,
                  )))
        ],
      ),
    );
  }
}

class ListItemText extends StatelessWidget {
  final String itemText;
  final Color itemTextColor;
  final double itemTextSize;
  final FontWeight itemTextWeight;
  final FontStyle itemTextStyle;

  ListItemText(this.itemText, this.itemTextColor, this.itemTextSize, this.itemTextWeight, this.itemTextStyle);

  @override
  Widget build(BuildContext context) {
    return Text(
      itemText,
      style: TextStyle(
          color: itemTextColor,
          fontSize: itemTextSize,
          fontWeight: FontWeight.bold),
    );
  }
}
