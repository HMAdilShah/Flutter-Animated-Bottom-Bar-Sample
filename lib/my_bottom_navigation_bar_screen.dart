import 'package:flutter/material.dart';
import 'package:flutteranimatedbottombar/my_bottom_navigation_bar.dart';
import 'my_bottom_navigation_bar_item.dart';

class MyBottomNavigationBarScreen extends StatefulWidget {
  @override
  _MyBottomNavigationBarScreenState createState() => _MyBottomNavigationBarScreenState();
}

class _MyBottomNavigationBarScreenState extends State<MyBottomNavigationBarScreen> {

  int currentPosition = 0;
  Color inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter Bottom Navigation Bar Sample')),
        body: mainBodyWidget(),
        bottomNavigationBar: bottomNavigationBarWidget());
  }

  Widget mainBodyWidget() {
    List<Widget> pages = [
      Container(
        alignment: Alignment.center,
        child: Text(
          "USERS",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "LOCATION",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "MESSAGES",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Text(
          "SETTINGS",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    ];
    return IndexedStack(
      children: pages,
      index: currentPosition,
    );
  }

  Widget bottomNavigationBarWidget() {
    return MyBottomNavigationBar(
      containerHeight: 75,
      itemCornerRadius: 25,
      curve: Curves.easeIn,
      bgColor: Colors.black,
      showElevation: true,
      selectedPosition: currentPosition,
      onItemSelected: (index) => setState(() => currentPosition = index),
      items: <MyBottomNavigationBarItem>[
        MyBottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text('Users'),
          activeColor: Colors.orangeAccent,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
        MyBottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          title: Text('Location'),
          activeColor: Colors.pinkAccent,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
        MyBottomNavigationBarItem(
          icon: Icon(Icons.message),
          title: Text('Messages '),
          activeColor: Colors.tealAccent,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
        MyBottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
          activeColor: Colors.deepOrangeAccent,
          inactiveColor: inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

}
