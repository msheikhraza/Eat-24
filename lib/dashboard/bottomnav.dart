

import 'package:eat_twenty_four/components/const.dart';
import 'package:eat_twenty_four/dashboard/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'cartscreen.dart';
import 'explore.dart';
import 'favourits.dart';


class bottomnav extends StatefulWidget {


  @override
  State<bottomnav> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<bottomnav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
 List<Widget> _widgetOptions = <Widget>[
    Explore(),
   favourite(),
   cart(0),
   profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
     //  bottomNavigationBar: BottomNavigationBar(
     //    backgroundColor: Color(0xFF6200EE),
     //    selectedItemColor: Colors.white,
     //    unselectedItemColor: Colors.white.withOpacity(.60),
     //    selectedFontSize: 14,
     //    unselectedFontSize: 14,
     //    items: const <BottomNavigationBarItem>[
     //      BottomNavigationBarItem(
     //        icon: Icon(Icons.home),
     //        label: 'Home',
     //        backgroundColor: Colors.red,
     //      ),
     //      BottomNavigationBarItem(
     //        icon: Icon(Icons.business),
     //        label: 'Business',
     //        backgroundColor: Colors.green,
     //      ),
     //      BottomNavigationBarItem(
     //        icon: Icon(Icons.school),
     //        label: 'School',
     //        backgroundColor: Colors.purple,
     //      ),
     //      BottomNavigationBarItem(
     //        icon: Icon(Icons.settings),
     //        label: 'Settings',
     //        backgroundColor: Colors.pink,
     //      ),
     //    ],
     //    currentIndex: _selectedIndex,
     // //   selectedItemColor: Constants.booger,
     //    onTap: _onItemTapped,
     //  ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Constants.booger,
        unselectedItemColor: Constants.purplebrown,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _selectedIndex,
        onTap:_onItemTapped,
        items: [
          BottomNavigationBarItem(
            title: Text('Explore'),
            icon: Icon(Icons.assistant_navigation),
          ),
          BottomNavigationBarItem(
            title: Text('Favourite'),
            icon: Icon(Icons.favorite_border),
          ),
          BottomNavigationBarItem(
            title: Text('Cart'),
            icon: Icon(Icons.shopping_cart_outlined),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.person_outline),
          ),
        ],
      )
    );
  }
}
