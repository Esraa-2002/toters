
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';





import 'TabBarview.dart';

import 'deliver.dart';
import 'listvar.dart';

import 'onepage.dart';
import 'page serah.dart';
import 'profile.dart';

class Navp extends StatefulWidget {
  const Navp({Key? key}) : super(key: key);

  @override
  State<Navp> createState() => _NavpState();
}

class _NavpState extends State<Navp> {
  int _selectedIndex = 0;
  static  TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static  List<Widget> _widgetOptions = <Widget>[
    Profile(),
    HomePage(),

    delv(),
    Search(),
    vert(),


    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
    Text(
      'TYPS',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),


      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
              child:Expanded(child: GNav(
                rippleColor: Colors.grey[300]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 20,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                tabs: [

                  GButton(
                    icon: Icons.person,
                    text: 'Acount',
                  ),
                  GButton(
                    icon: Icons.list_alt,
                    text: 'Orders',
                  ),
                  GButton(
                    icon: Icons.flare_sharp,
                    text: 'food',
                  ),
                  GButton(
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
              ) ,)

          ),
        ),
      ),
    );
  }
}
