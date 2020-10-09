import 'package:fluter_verify_mobile_number/Screens/activities_list_item.dart';
import 'package:flutter/material.dart'; 
void main() => runApp(ActivitiesList()); 
  
class ActivitiesList extends StatelessWidget { 
  
  @override 
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Color(0XFF75AE43),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/green_BG.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 45, right: 25),
            child: ListViewBuilder(),
          )
            
        )
    );
  } 
} 

class ListViewBuilder extends StatelessWidget { 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      backgroundColor: Colors.transparent,
      body: ListView.builder( 
        itemCount: 100, 
        itemBuilder: _getActivitiesItemUI
          // ListTile( 
          //   leading: Icon(Icons.list), 
          //   trailing: Text("GFG", 
          //                  style: TextStyle( 
          //                    color: Colors.green,fontSize: 15),), 
          //   title:Text("List item $index") 
          //   ); 
        
        ), 
    ); 
  } 
  
  Widget _getActivitiesItemUI(BuildContext context, int index){
    return Container(
      child: Padding(
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
                      width: 210,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Color(0XFF40833E), // Dark green background
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
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
                            child: ListItemText('75%', Colors.orange, 28, FontWeight.bold, FontStyle.italic)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 5,
                      color: Colors.white,
                    )))
          ],
        ),
      ),
    );
  }
}