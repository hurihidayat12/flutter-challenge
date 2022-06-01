import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation());
  }

  Widget _buildBottomNavigation() {
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.home,
            color: Colors.blueAccent,
          ),
          icon: new Icon(
            Icons.home,
            color: Colors.blueGrey,
          ),
          // ignore: deprecated_member_use
          title: new Text(
            "Beranda",
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.assignment,
            color: Colors.blueAccent,
          ),
          icon: new Icon(
            Icons.assignment,
            color: Colors.cyan,
          ),
          // ignore: deprecated_member_use
          title: new Text('maps'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.message,
            color: Colors.blueAccent,
          ),

          icon: new Icon(
            Icons.message,
            color: Colors.cyan,
          ),
          // ignore: deprecated_member_use
          title: new Text('Info'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: Colors.blueAccent,
          ),
          icon: new Icon(
            Icons.person,
            color: Colors.cyan,
          ),
          // ignore: deprecated_member_use
          title: new Text('akun'),
        ),
      ],
    );
  }
}
