import 'package:fluter_verify_mobile_number/Screens/activities_list_item.dart';
import 'package:flutter/material.dart';

void main() => runApp(ActivitiesList());

class ActivitiesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0XFF75AE43),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 45, right: 25),
          child: ListViewBuilder(),
        )));
  }
}

class ListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.builder(itemCount: 100, itemBuilder: _getActivitiesItemUI),
    );
  }

  Widget _getActivitiesItemUI(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
      child: Column(
        children: [
          Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color(0XFF40833E), // Dark green color
                      padding: EdgeInsets.fromLTRB(0, 10, 10, 8),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: FlutterLogo(size: 40.0,),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ListItemText('Title', null, 18, null, null),
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
                                ListItemText(
                                    'Subtitle 1', null, null, null, null),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ListItemText(
                                        'Subtitle 2', null, null, null, null),
                                    ListItemText(
                                        'Subtitle 3', null, null, null, null),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Center(
                      child: ListItemText(
                          '75%', Colors.orange, 30, null, FontStyle.italic),
                    )),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25, top: 25.0, right: 25),
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

  ListItemText(this.itemText, this.itemTextColor, this.itemTextSize,
      this.itemTextWeight, this.itemTextStyle);

  @override
  Widget build(BuildContext context) {
    return Text(
      itemText,
      style: TextStyle(
          color: itemTextColor != null ? itemTextColor : Colors.white,
          fontSize: itemTextSize != null ? itemTextSize : 14,
          fontWeight: itemTextWeight != null ? itemTextWeight : FontWeight.bold,
          fontStyle: itemTextStyle != null ? itemTextStyle : FontStyle.normal),
    );
  }
}
