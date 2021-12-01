import 'package:flutter/material.dart';
import 'package:otsocial/screens/navigation/bottom_bar.dart';
import 'package:otsocial/screens/trending/trending.dart';
import 'package:otsocial/util/my_style.dart';

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.white,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          activeColor: MyStyle.premaryColor,
          inactiveColor: _inactiveColor,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.people),
          activeColor: MyStyle.premaryColor,
          inactiveColor: _inactiveColor,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.message),
          activeColor: MyStyle.premaryColor,
          inactiveColor: _inactiveColor,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.settings),
          activeColor: MyStyle.premaryColor,
          inactiveColor: _inactiveColor,
        ),
      ],
    );
  }

  Widget getBody() {
    List<Widget> pages = [
      Trending(),
      Trending(),
      Trending(),
      Trending(),
    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );
  }
}
