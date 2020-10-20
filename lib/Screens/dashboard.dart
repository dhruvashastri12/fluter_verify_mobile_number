import 'package:fluter_verify_mobile_number/Screens/pageview_with_indicator.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashboardPage();
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(flex: 2, child: PageviewWithIndicator()),
          Expanded(flex: 3, child: DashboardListView())
        ],
      ),
    );
  }
}

class DashboardListView extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Theme(
        data: ThemeData(highlightColor: Colors.green[800]),
        child: Scrollbar(
            isAlwaysShown: true,
            controller: _scrollController,
            thickness: 13.0,
            radius: Radius.circular(10.0),
            child: ListView.builder(
                controller: _scrollController,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return _getDashboardListItem();
                })),
      ),
    );
  }

  Widget _getDashboardListItem() {
    return Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.green[800],
              width: 7,
              height: 80,
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Image(image: AssetImage('assets/images/test_farm.jpg')),
                )),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: const TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w900,
                      fontSize: 18.0,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 5.0)),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.black54, fontSize: 14.0),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
